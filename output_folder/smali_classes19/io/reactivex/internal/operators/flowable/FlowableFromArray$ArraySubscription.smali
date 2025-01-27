.class final Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArraySubscription;
.super Lio/reactivex/internal/operators/flowable/FlowableFromArray$BaseArraySubscription;
.source "FlowableFromArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableFromArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ArraySubscription"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/FlowableFromArray$BaseArraySubscription<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x23e7f25903d0c345L


# instance fields
.field final downstream:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;[TT;)V"
        }
    .end annotation

    .line 113
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArraySubscription;, "Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArraySubscription<TT;>;"
    .local p1, "actual":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    .local p2, "array":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0, p2}, Lio/reactivex/internal/operators/flowable/FlowableFromArray$BaseArraySubscription;-><init>([Ljava/lang/Object;)V

    .line 114
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArraySubscription;->downstream:Lorg/reactivestreams/Subscriber;

    .line 115
    return-void
.end method


# virtual methods
.method fastPath()V
    .locals 8

    .line 119
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArraySubscription;, "Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArraySubscription<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArraySubscription;->array:[Ljava/lang/Object;

    .line 120
    .local v0, "arr":[Ljava/lang/Object;, "[TT;"
    array-length v1, v0

    .line 121
    .local v1, "f":I
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArraySubscription;->downstream:Lorg/reactivestreams/Subscriber;

    .line 123
    .local v2, "a":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    iget v3, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArraySubscription;->index:I

    .local v3, "i":I
    :goto_0
    if-eq v3, v1, :cond_2

    .line 124
    iget-boolean v4, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArraySubscription;->cancelled:Z

    if-eqz v4, :cond_0

    .line 125
    return-void

    .line 127
    :cond_0
    aget-object v4, v0, v3

    .line 128
    .local v4, "t":Ljava/lang/Object;, "TT;"
    if-nez v4, :cond_1

    .line 129
    new-instance v5, Ljava/lang/NullPointerException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The element at index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v5}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 130
    return-void

    .line 132
    :cond_1
    invoke-interface {v2, v4}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 123
    .end local v4    # "t":Ljava/lang/Object;, "TT;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 135
    .end local v3    # "i":I
    :cond_2
    iget-boolean v3, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArraySubscription;->cancelled:Z

    if-eqz v3, :cond_3

    .line 136
    return-void

    .line 138
    :cond_3
    invoke-interface {v2}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 139
    return-void
.end method

.method slowPath(J)V
    .locals 10
    .param p1, "r"    # J

    .line 143
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArraySubscription;, "Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArraySubscription<TT;>;"
    const-wide/16 v0, 0x0

    .line 144
    .local v0, "e":J
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArraySubscription;->array:[Ljava/lang/Object;

    .line 145
    .local v2, "arr":[Ljava/lang/Object;, "[TT;"
    array-length v3, v2

    .line 146
    .local v3, "f":I
    iget v4, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArraySubscription;->index:I

    .line 147
    .local v4, "i":I
    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArraySubscription;->downstream:Lorg/reactivestreams/Subscriber;

    .line 151
    .local v5, "a":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    :goto_0
    cmp-long v6, v0, p1

    if-eqz v6, :cond_2

    if-eq v4, v3, :cond_2

    .line 152
    iget-boolean v6, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArraySubscription;->cancelled:Z

    if-eqz v6, :cond_0

    .line 153
    return-void

    .line 156
    :cond_0
    aget-object v6, v2, v4

    .line 158
    .local v6, "t":Ljava/lang/Object;, "TT;"
    if-nez v6, :cond_1

    .line 159
    new-instance v7, Ljava/lang/NullPointerException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The element at index "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is null"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v7}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 160
    return-void

    .line 162
    :cond_1
    invoke-interface {v5, v6}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 165
    const-wide/16 v7, 0x1

    add-long/2addr v0, v7

    .line 166
    nop

    .end local v6    # "t":Ljava/lang/Object;, "TT;"
    add-int/lit8 v4, v4, 0x1

    .line 167
    goto :goto_0

    .line 169
    :cond_2
    if-ne v4, v3, :cond_4

    .line 170
    iget-boolean v6, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArraySubscription;->cancelled:Z

    if-nez v6, :cond_3

    .line 171
    invoke-interface {v5}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 173
    :cond_3
    return-void

    .line 176
    :cond_4
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArraySubscription;->get()J

    move-result-wide p1

    .line 177
    cmp-long v6, v0, p1

    if-nez v6, :cond_6

    .line 178
    iput v4, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArraySubscription;->index:I

    .line 179
    neg-long v6, v0

    invoke-virtual {p0, v6, v7}, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArraySubscription;->addAndGet(J)J

    move-result-wide p1

    .line 180
    const-wide/16 v6, 0x0

    cmp-long v6, p1, v6

    if-nez v6, :cond_5

    .line 181
    return-void

    .line 183
    :cond_5
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 177
    :cond_6
    goto :goto_0
.end method
