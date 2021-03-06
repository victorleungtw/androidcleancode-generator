package ${packageName};

import android.content.Intent;
import android.support.annotation.NonNull;
import android.view.View;
import android.widget.AdapterView;

import java.lang.ref.WeakReference;





interface ${classname}RouterInput{
    public Intent navigateToSomeWhere(int position);
    public void passDataToNextScene(int position, Intent intent);
}

public class ${classname}Router implements ${classname}RouterInput, AdapterView.OnItemClickListener {

    public static String TAG = ${classname}Router.class.getSimpleName();
    public WeakReference<${classname}Activity> activity;




    @NonNull
    @Override
    public Intent navigateToSomeWhere(int position) {
        //Based on the position or someother data decide what is the next scene
        //Intent intent = new Intent(activity.get(),NextActivity.class);
        //return intent;
        return null;
    }

    @Override
    public void passDataToNextScene(int position, Intent intent) {
        //Based on the position or someother data decide the data for the next scene
        // ${classname}Model flight = activity.get().listOfSomething.get(position);
        // intent.putExtra("flight",flight);
    }

    @Override
    public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
       // Log.e(TAG, "onItemClick() called with: parent = [" + parent + "], view = [" + view + "], position = [" + position + "], id = [" + id + "]");
        Intent intent = navigateToSomeWhere(position);
        passDataToNextScene(position, intent);
        activity.get().startActivity(intent);
    }


}
