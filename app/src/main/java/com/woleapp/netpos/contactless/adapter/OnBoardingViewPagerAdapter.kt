package com.woleapp.netpos.contactless.adapter

import android.content.Context
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.TextView
import androidx.viewpager.widget.PagerAdapter
import com.woleapp.netpos.contactless.model.onboarding.OnBoardingData
import com.woleapp.netpos.contactless.R

class OnBoardingViewPagerAdapter(
    private var context: Context, private var onBoardingDataList: List<OnBoardingData>
) : PagerAdapter() {
    override fun isViewFromObject(view: View, `object`: Any): Boolean {
        return view == `object`
    }

    override fun getCount(): Int {
        return onBoardingDataList.size
    }

    override fun destroyItem(container: ViewGroup, position: Int, `object`: Any) {
        container.removeView(`object` as View)
    }

    override fun instantiateItem(container: ViewGroup, position: Int): Any {
        val view = LayoutInflater.from(context).inflate(R.layout.onboarding_layout, null)

        val title: TextView = view.findViewById(R.id.find_event_fragment_dummy_text_view)
        val subTitle: TextView = view.findViewById(R.id.find_event_fragment_dummy_text_view_1)
        val imageView: ImageView = view.findViewById(R.id.find_event_fragment_image)

        title.text = onBoardingDataList[position].title
        subTitle.text = onBoardingDataList[position].subTitle
        imageView.setImageResource(onBoardingDataList[position].imageUrl)

        container.addView(view)
        return view
    }
}
