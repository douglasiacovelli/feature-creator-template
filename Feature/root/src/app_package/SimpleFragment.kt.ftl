package ${escapeKotlinIdentifiers(packageName)}.presentation

import android.content.Context
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.fragment.app.viewModels
import androidx.lifecycle.ViewModelProvider
import androidx.fragment.app.Fragment
import br.com.revelo.core.extensions.inflateDataBinding
import ${applicationPackage}.R
import ${applicationPackage}.databinding.${bindingName}
import ${escapeKotlinIdentifiers(packageName)}.di.Dagger${featureName}Component
import br.com.revelo.candidates.appComponent
import javax.inject.Inject
import br.com.revelo.core.R as RCore

class ${fragmentName} : Fragment() {

    @Inject
    lateinit var viewModelFactory: ViewModelProvider.Factory
    private var dataBinding: ${bindingName}? = null
    private val viewModel: ${viewModelClassName} by viewModels { viewModelFactory }

    override fun onAttach(context: Context) {
        inject()
        super.onAttach(context)
    }

    private fun inject() {
        Dagger${featureName}Component.builder()
            .appComponent(appComponent())
            .build()
            .inject(this)
    }

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {
        dataBinding = inflateDataBinding(inflater, R.layout.${layoutName}, container)
        dataBinding!!.vm = viewModel
        return dataBinding!!.root
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        setupToolbar()
        setupObservers()
    }

    private fun setupObservers() {
        // Listen to your ViewModel variables
    }

    private fun setupToolbar() {
        dataBinding?.toolbar?.setNavigationIcon(RCore.drawable.ic_arrow_back)
        dataBinding?.toolbar?.setNavigationOnClickListener { activity?.onBackPressed() }
    }
}