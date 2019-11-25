<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>

    <mkdir at="${escapeXmlAttribute(srcOut)}/di"/>
    <mkdir at="${escapeXmlAttribute(srcOut)}/presentation"/>
    <mkdir at="${escapeXmlAttribute(srcOut)}/data"/>
    <mkdir at="${escapeXmlAttribute(srcOut)}/domain"/>

    <instantiate from="root/src/app_package/SimpleFragment.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/presentation/${fragmentName}.kt" />

    <instantiate from="root/res/layout/fragment_simple.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />

    <open file="${escapeXmlAttribute(srcOut)}/presentation/${fragmentName}.kt" />

    <instantiate from="root/src/app_package/SimpleViewModel.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/presentation/${viewModelClassName}.kt" />
    <instantiate from="root/src/app_package/SimpleInjection.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/di/${featureName}Injection.kt" />

</recipe>
