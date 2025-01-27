.class public final Ldagger/hilt/android/EarlyEntryPoints;
.super Ljava/lang/Object;
.source "EarlyEntryPoints.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .param p0, "applicationContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "applicationContext",
            "entryPoint"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 48
    .local p1, "entryPoint":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Ldagger/hilt/android/internal/Contexts;->getApplication(Landroid/content/Context;)Landroid/app/Application;

    move-result-object v0

    .line 49
    .local v0, "application":Landroid/app/Application;
    instance-of v1, v0, Ldagger/hilt/internal/GeneratedComponentManagerHolder;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Expected application context to implement GeneratedComponentManagerHolder. Check that you\'re passing in an application context that uses Hilt."

    invoke-static {v1, v4, v3}, Ldagger/hilt/internal/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 53
    move-object v1, v0

    check-cast v1, Ldagger/hilt/internal/GeneratedComponentManagerHolder;

    .line 54
    invoke-interface {v1}, Ldagger/hilt/internal/GeneratedComponentManagerHolder;->componentManager()Ldagger/hilt/internal/GeneratedComponentManager;

    move-result-object v1

    .line 55
    .local v1, "componentManager":Ljava/lang/Object;
    instance-of v3, v1, Ldagger/hilt/internal/TestSingletonComponentManager;

    if-eqz v3, :cond_0

    .line 56
    const-class v3, Ldagger/hilt/android/EarlyEntryPoint;

    .line 57
    invoke-static {p1, v3}, Ldagger/hilt/android/EarlyEntryPoints;->hasAnnotationReflection(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 59
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    .line 56
    const-string v2, "%s should be called with EntryPoints.get() rather than EarlyEntryPoints.get()"

    invoke-static {v3, v2, v4}, Ldagger/hilt/internal/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 60
    move-object v2, v1

    check-cast v2, Ldagger/hilt/internal/TestSingletonComponentManager;

    .line 61
    invoke-interface {v2}, Ldagger/hilt/internal/TestSingletonComponentManager;->earlySingletonComponent()Ljava/lang/Object;

    move-result-object v2

    .line 62
    .local v2, "earlyComponent":Ljava/lang/Object;
    invoke-virtual {p1, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 67
    .end local v2    # "earlyComponent":Ljava/lang/Object;
    :cond_0
    invoke-static {v0, p1}, Ldagger/hilt/EntryPoints;->get(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method private static hasAnnotationReflection(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "clazz",
            "annotationClazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .line 73
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "annotationClazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 74
    .local v4, "annotation":Ljava/lang/annotation/Annotation;
    invoke-interface {v4}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 75
    const/4 v0, 0x1

    return v0

    .line 73
    .end local v4    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 78
    :cond_1
    return v2
.end method
