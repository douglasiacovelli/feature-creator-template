<?xml version="1.0" encoding="utf-8"?>
<layout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    xmlns:tools="http://schemas.android.com/tools">
    <data>
        <variable
            name="vm"
            type="${packageName}.presentation.${viewModelClassName}" />
    </data>
    <androidx.coordinatorlayout.widget.CoordinatorLayout
        android:layout_width="match_parent"
        android:layout_height="match_parent">

        <androidx.constraintlayout.widget.ConstraintLayout
            android:layout_width="match_parent"
            android:layout_height="match_parent"
            app:layout_behavior="@string/appbar_scrolling_view_behavior">

                <androidx.core.widget.NestedScrollView
                    android:id="@+id/scrollView"
                    android:layout_width="match_parent"
                    android:layout_height="match_parent">

                    <LinearLayout
                        android:layout_width="match_parent"
                        android:layout_height="wrap_content"
                        android:orientation="vertical">

                        <TextView
                            android:id="@+id/screenTitle"
                            android:layout_width="match_parent"
                            android:layout_height="wrap_content"
                            tools:text="Awesome screen title" />

                    </LinearLayout>
                </androidx.core.widget.NestedScrollView>
        </androidx.constraintlayout.widget.ConstraintLayout>
    </androidx.coordinatorlayout.widget.CoordinatorLayout>
</layout>
