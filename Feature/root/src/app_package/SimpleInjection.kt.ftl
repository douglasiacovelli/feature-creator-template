package ${escapeKotlinIdentifiers(packageName)}.di

import androidx.lifecycle.ViewModel
import ${escapeKotlinIdentifiers(packageName)}.presentation.${viewModelClassName}
import ${escapeKotlinIdentifiers(packageName)}.presentation.${fragmentName}
import dagger.Binds
import dagger.Component
import dagger.Module
import dagger.multibindings.IntoMap

@FragmentScope
@Component(
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
