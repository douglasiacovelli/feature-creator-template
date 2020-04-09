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
        style="@style/SurfaceScreenStyle"
        android:layout_width="match_parent"
        android:layout_height="match_parent">

        <com.google.android.material.appbar.AppBarLayout
            android:id="@+id/appbar"
            android:layout_width="match_parent"
            android:layout_height="wrap_content"
            android:background="?colorSurface"
            app:liftOnScroll="true"
            app:liftOnScrollTargetViewId="@+id/scrollView">

            <androidx.appcompat.widget.Toolbar
                android:id="@+id/toolbar"
                android:layout_width="match_parent"
                android:layout_height="wrap_content" />

        </com.google.android.material.appbar.AppBarLayout>

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
                        android:orientation="vertical"
                        android:paddingStart="@dimen/lg"
                        android:paddingTop="@dimen/base"
                        android:paddingEnd="@dimen/lg"
                        android:paddingBottom="@dimen/base"
                        tools:visibility="visible">

                        <TextView
                            android:id="@+id/screenTitle"
                            style="@style/Text.H2"
                            android:layout_width="match_parent"
                            android:layout_height="wrap_content"
                            android:layout_marginBottom="@dimen/md"
                            tools:text="Awesome screen title" />

                    </LinearLayout>
                </androidx.core.widget.NestedScrollView>
        </androidx.constraintlayout.widget.ConstraintLayout>
    </androidx.coordinatorlayout.widget.CoordinatorLayout>
</layout>
