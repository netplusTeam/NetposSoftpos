.class public final Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;
.super Lretrofit2/CallAdapter$Factory;
.source "RxJava2CallAdapterFactory.java"


# instance fields
.field private final isAsync:Z

.field private final scheduler:Lio/reactivex/Scheduler;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lio/reactivex/Scheduler;Z)V
    .locals 0
    .param p1, "scheduler"    # Lio/reactivex/Scheduler;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "isAsync"    # Z

    .line 88
    invoke-direct {p0}, Lretrofit2/CallAdapter$Factory;-><init>()V

    .line 89
    iput-object p1, p0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->scheduler:Lio/reactivex/Scheduler;

    .line 90
    iput-boolean p2, p0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->isAsync:Z

    .line 91
    return-void
.end method

.method public static create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;
    .locals 3

    .line 67
    new-instance v0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;-><init>(Lio/reactivex/Scheduler;Z)V

    return-object v0
.end method

.method public static createAsync()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;
    .locals 3

    .line 72
    new-instance v0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;-><init>(Lio/reactivex/Scheduler;Z)V

    return-object v0
.end method

.method public static createWithScheduler(Lio/reactivex/Scheduler;)Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;
    .locals 2
    .param p0, "scheduler"    # Lio/reactivex/Scheduler;

    .line 81
    if-eqz p0, :cond_0

    .line 82
    new-instance v0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;-><init>(Lio/reactivex/Scheduler;Z)V

    return-object v0

    .line 81
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "scheduler == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public get(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/CallAdapter;
    .locals 23
    .param p1, "returnType"    # Ljava/lang/reflect/Type;
    .param p2, "annotations"    # [Ljava/lang/annotation/Annotation;
    .param p3, "retrofit"    # Lretrofit2/Retrofit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lretrofit2/Retrofit;",
            ")",
            "Lretrofit2/CallAdapter<",
            "**>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 96
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static/range {p1 .. p1}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    .line 98
    .local v2, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v3, Lio/reactivex/Completable;

    if-ne v2, v3, :cond_0

    .line 101
    new-instance v3, Lretrofit2/adapter/rxjava2/RxJava2CallAdapter;

    const-class v5, Ljava/lang/Void;

    iget-object v6, v0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->scheduler:Lio/reactivex/Scheduler;

    iget-boolean v7, v0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->isAsync:Z

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object v4, v3

    invoke-direct/range {v4 .. v13}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapter;-><init>(Ljava/lang/reflect/Type;Lio/reactivex/Scheduler;ZZZZZZZ)V

    return-object v3

    .line 105
    :cond_0
    const-class v3, Lio/reactivex/Flowable;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v5

    .line 106
    .local v3, "isFlowable":Z
    :goto_0
    const-class v6, Lio/reactivex/Single;

    if-ne v2, v6, :cond_2

    move v6, v4

    goto :goto_1

    :cond_2
    move v6, v5

    :goto_1
    move/from16 v16, v6

    .line 107
    .local v16, "isSingle":Z
    const-class v6, Lio/reactivex/Maybe;

    if-ne v2, v6, :cond_3

    goto :goto_2

    :cond_3
    move v4, v5

    .line 108
    .local v4, "isMaybe":Z
    :goto_2
    const-class v6, Lio/reactivex/Observable;

    if-eq v2, v6, :cond_4

    if-nez v3, :cond_4

    if-nez v16, :cond_4

    if-nez v4, :cond_4

    .line 109
    const/4 v5, 0x0

    return-object v5

    .line 112
    :cond_4
    const/4 v6, 0x0

    .line 113
    .local v6, "isResult":Z
    const/4 v7, 0x0

    .line 115
    .local v7, "isBody":Z
    instance-of v8, v1, Ljava/lang/reflect/ParameterizedType;

    if-nez v8, :cond_8

    .line 117
    if-nez v3, :cond_7

    if-nez v16, :cond_6

    if-eqz v4, :cond_5

    const-string v5, "Maybe"

    goto :goto_3

    :cond_5
    const-string v5, "Observable"

    goto :goto_3

    :cond_6
    const-string v5, "Single"

    goto :goto_3

    :cond_7
    const-string v5, "Flowable"

    .line 118
    .local v5, "name":Ljava/lang/String;
    :goto_3
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " return type must be parameterized as "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "<Foo> or "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "<? extends Foo>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 128
    .end local v5    # "name":Ljava/lang/String;
    :cond_8
    move-object v8, v1

    check-cast v8, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v5, v8}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v15

    .line 129
    .local v15, "observableType":Ljava/lang/reflect/Type;
    invoke-static {v15}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v14

    .line 130
    .local v14, "rawObservableType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v8, Lretrofit2/Response;

    if-ne v14, v8, :cond_a

    .line 131
    instance-of v8, v15, Ljava/lang/reflect/ParameterizedType;

    if-eqz v8, :cond_9

    .line 135
    move-object v8, v15

    check-cast v8, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v5, v8}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v5

    move/from16 v17, v6

    move/from16 v18, v7

    .local v5, "responseType":Ljava/lang/reflect/Type;
    goto :goto_4

    .line 132
    .end local v5    # "responseType":Ljava/lang/reflect/Type;
    :cond_9
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v8, "Response must be parameterized as Response<Foo> or Response<? extends Foo>"

    invoke-direct {v5, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 136
    :cond_a
    const-class v8, Lretrofit2/adapter/rxjava2/Result;

    if-ne v14, v8, :cond_c

    .line 137
    instance-of v8, v15, Ljava/lang/reflect/ParameterizedType;

    if-eqz v8, :cond_b

    .line 141
    move-object v8, v15

    check-cast v8, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v5, v8}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v5

    .line 142
    .restart local v5    # "responseType":Ljava/lang/reflect/Type;
    const/4 v6, 0x1

    move/from16 v17, v6

    move/from16 v18, v7

    goto :goto_4

    .line 138
    .end local v5    # "responseType":Ljava/lang/reflect/Type;
    :cond_b
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v8, "Result must be parameterized as Result<Foo> or Result<? extends Foo>"

    invoke-direct {v5, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 144
    :cond_c
    move-object v5, v15

    .line 145
    .restart local v5    # "responseType":Ljava/lang/reflect/Type;
    const/4 v7, 0x1

    move/from16 v17, v6

    move/from16 v18, v7

    .line 148
    .end local v6    # "isResult":Z
    .end local v7    # "isBody":Z
    .local v17, "isResult":Z
    .local v18, "isBody":Z
    :goto_4
    new-instance v19, Lretrofit2/adapter/rxjava2/RxJava2CallAdapter;

    iget-object v8, v0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->scheduler:Lio/reactivex/Scheduler;

    iget-boolean v9, v0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->isAsync:Z

    const/16 v20, 0x0

    move-object/from16 v6, v19

    move-object v7, v5

    move/from16 v10, v17

    move/from16 v11, v18

    move v12, v3

    move/from16 v13, v16

    move-object/from16 v21, v14

    .end local v14    # "rawObservableType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v21, "rawObservableType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move v14, v4

    move-object/from16 v22, v15

    .end local v15    # "observableType":Ljava/lang/reflect/Type;
    .local v22, "observableType":Ljava/lang/reflect/Type;
    move/from16 v15, v20

    invoke-direct/range {v6 .. v15}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapter;-><init>(Ljava/lang/reflect/Type;Lio/reactivex/Scheduler;ZZZZZZZ)V

    return-object v19
.end method
