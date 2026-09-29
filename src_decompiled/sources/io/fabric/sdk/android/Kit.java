package io.fabric.sdk.android;

import android.content.Context;
import io.fabric.sdk.android.services.common.IdManager;
import io.fabric.sdk.android.services.concurrency.DependsOn;
import io.fabric.sdk.android.services.concurrency.Task;
import java.io.File;
import java.util.Collection;

/* loaded from: classes.dex */
public abstract class Kit<Result> implements Comparable<Kit> {
    Context context;
    Fabric fabric;
    IdManager idManager;
    InitializationCallback<Result> initializationCallback;
    InitializationTask<Result> initializationTask = new InitializationTask<>(this);
    final DependsOn dependsOnAnnotation = (DependsOn) getClass().getAnnotation(DependsOn.class);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract Result doInBackground();

    public abstract String getIdentifier();

    public abstract String getVersion();

    /* JADX INFO: Access modifiers changed from: package-private */
    public void injectParameters(Context context, Fabric fabric, InitializationCallback<Result> callback, IdManager idManager) {
        this.fabric = fabric;
        this.context = new FabricContext(context, getIdentifier(), getPath());
        this.initializationCallback = callback;
        this.idManager = idManager;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void initialize() {
        this.initializationTask.executeOnExecutor(this.fabric.getExecutorService(), (Object[]) new Void[]{(Void) null});
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean onPreExecute() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onPostExecute(Result result) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onCancelled(Result result) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public IdManager getIdManager() {
        return this.idManager;
    }

    public Context getContext() {
        return this.context;
    }

    public Fabric getFabric() {
        return this.fabric;
    }

    public String getPath() {
        return ".Fabric" + File.separator + getIdentifier();
    }

    @Override // java.lang.Comparable
    public int compareTo(Kit another) {
        if (containsAnnotatedDependency(another)) {
            return 1;
        }
        if (another.containsAnnotatedDependency(this)) {
            return -1;
        }
        if (!hasAnnotatedDependency() || another.hasAnnotatedDependency()) {
            return (hasAnnotatedDependency() || !another.hasAnnotatedDependency()) ? 0 : -1;
        }
        return 1;
    }

    boolean containsAnnotatedDependency(Kit target) {
        if (!hasAnnotatedDependency()) {
            return false;
        }
        Class<?>[] deps = this.dependsOnAnnotation.value();
        for (Class<?> dep : deps) {
            if (dep.isAssignableFrom(target.getClass())) {
                return true;
            }
        }
        return false;
    }

    boolean hasAnnotatedDependency() {
        return this.dependsOnAnnotation != null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Collection<Task> getDependencies() {
        return this.initializationTask.getDependencies();
    }
}
