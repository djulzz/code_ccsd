package djulzz.criminalintent;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.FragmentManager;
import android.support.v7.app.AppCompatActivity;

/**
 * Created by Esposito on 3/29/2017.
 */

public class CrimeActivity extends AppCompatActivity {
    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_crime);

        // from android.support.v4
        FragmentManager fm = getSupportFragmentManager();
    }
}
