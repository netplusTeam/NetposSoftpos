package com.woleapp.netpos.ui.activities

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import androidx.fragment.app.Fragment
import com.netplus.sunyardlib.CardReadResult
import com.netplus.sunyardlib.CardReaderEvent
import com.netplus.sunyardlib.CardReaderService2
import com.woleapp.netpos.R
import com.woleapp.netpos.ui.fragments.DashboardFragment
import io.reactivex.Observer
import io.reactivex.android.schedulers.AndroidSchedulers
import io.reactivex.disposables.Disposable
import io.reactivex.schedulers.Schedulers
import timber.log.Timber

class MainActivity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        showFragment(DashboardFragment(), DashboardFragment::class.java.simpleName)
    }

    private fun showFragment(targetFragment: Fragment, className: String) {
        try {
            supportFragmentManager.beginTransaction()
                .apply {
                    replace(R.id.container_main, targetFragment, className)
                    setCustomAnimations(R.anim.right_to_left, android.R.anim.fade_out)
                    commit()
                }
        } catch (e: Exception) {
            e.printStackTrace()
        }

    }

    override fun onResume() {
        super.onResume()
//        CardReaderService2.readCard(this)
//            .subscribeOn(Schedulers.io())
//            .observeOn(AndroidSchedulers.mainThread())
//            .subscribe(object: Observer<CardReaderEvent>{
//                override fun onSubscribe(d: Disposable) {
//
//                }
//
//                override fun onNext(t: CardReaderEvent) {
//                    when (t){
//                        is CardReaderEvent.CardScanned -> {Timber.e("Card Detected")}
//                        is CardReaderEvent.CardRead<*> -> {Timber.e((t.data as CardReadResult).toString())}
//                    }
//                }
//
//                override fun onError(e: Throwable) {
//                    Timber.e(e.localizedMessage)
//                }
//
//                override fun onComplete() {
//                    Timber.e("Done Reading card")
//                }
//
//            })
    }
}
