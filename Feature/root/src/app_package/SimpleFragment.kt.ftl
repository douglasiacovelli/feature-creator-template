package ${escapeKotlinIdentifiers(packageName)}.presentation

import android.content.Context
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.databinding.DataBindingUtil
import androidx.fragment.app.viewModels
import androidx.lifecycle.ViewModelProvider
import androidx.fragment.app.Fragment
import ${applicationPackage}.R
import ${applicationPackage}.databinding.${bindingName}
import ${escapeKotlinIdentifiers(packageName)}.di.Dagger${featureName}Component
import javax.inject.Inject

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
            .build()
            .inject(this)
    }

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {
        dataBinding = DataBindingUtil.inflate(inflater, R.layout.${layoutName}, container, false)
        dataBinding!!.lifecycleOwner = viewLifecycleOwner
        dataBinding!!.vm = viewModel
        return dataBinding!!.root
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        setupObservers()
    }

    override fun onDestroyView() {
        dataBinding = null
        super.onDestroyView()
    }

    private fun setupObservers() {
        // Listen to your ViewModel variables
    }
}