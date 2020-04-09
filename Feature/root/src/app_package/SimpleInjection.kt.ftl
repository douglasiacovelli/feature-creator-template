package ${escapeKotlinIdentifiers(packageName)}.di

import androidx.lifecycle.ViewModel
import ${escapeKotlinIdentifiers(packageName)}.presentation.${viewModelClassName}
import ${escapeKotlinIdentifiers(packageName)}.presentation.${fragmentName}
import br.com.revelo.candidates.di.AppComponent
import br.com.revelo.core.di.FragmentScope
import br.com.revelo.core.di.ViewModelKey
import br.com.revelo.core.di.ViewModelModule
import dagger.Binds
import dagger.Component
import dagger.Module
import dagger.multibindings.IntoMap

@FragmentScope
@Component(
    dependencies = [AppComponent::class],
    modules = [${featureName}Module::class, ViewModelModule::class]
)
interface ${featureName}Component {
    fun inject(fragment: ${fragmentName})
}

@Module
abstract class ${featureName}Module {
    @FragmentScope
    @Binds
    @IntoMap
    @ViewModelKey(${viewModelClassName}::class)
    abstract fun binds${viewModelClassName}(viewModel: ${viewModelClassName}): ViewModel

}
