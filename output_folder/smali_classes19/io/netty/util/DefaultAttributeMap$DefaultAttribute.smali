.class final Lio/netty/util/DefaultAttributeMap$DefaultAttribute;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "DefaultAttributeMap.java"

# interfaces
.implements Lio/netty/util/Attribute;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/DefaultAttributeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultAttribute"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "TT;>;",
        "Lio/netty/util/Attribute<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x24ef3b9fc599cf83L


# instance fields
.field private final head:Lio/netty/util/DefaultAttributeMap$DefaultAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/DefaultAttributeMap$DefaultAttribute<",
            "*>;"
        }
    .end annotation
.end field

.field private final key:Lio/netty/util/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/AttributeKey<",
            "TT;>;"
        }
    .end annotation
.end field

.field private next:Lio/netty/util/DefaultAttributeMap$DefaultAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/DefaultAttributeMap$DefaultAttribute<",
            "*>;"
        }
    .end annotation
.end field

.field private prev:Lio/netty/util/DefaultAttributeMap$DefaultAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/DefaultAttributeMap$DefaultAttribute<",
            "*>;"
        }
    .end annotation
.end field

.field private volatile removed:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 147
    .local p0, "this":Lio/netty/util/DefaultAttributeMap$DefaultAttribute;, "Lio/netty/util/DefaultAttributeMap$DefaultAttribute<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 148
    iput-object p0, p0, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->head:Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->key:Lio/netty/util/AttributeKey;

    .line 150
    return-void
.end method

.method constructor <init>(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;Lio/netty/util/AttributeKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/DefaultAttributeMap$DefaultAttribute<",
            "*>;",
            "Lio/netty/util/AttributeKey<",
            "TT;>;)V"
        }
    .end annotation

    .line 141
    .local p0, "this":Lio/netty/util/DefaultAttributeMap$DefaultAttribute;, "Lio/netty/util/DefaultAttributeMap$DefaultAttribute<TT;>;"
    .local p1, "head":Lio/netty/util/DefaultAttributeMap$DefaultAttribute;, "Lio/netty/util/DefaultAttributeMap$DefaultAttribute<*>;"
    .local p2, "key":Lio/netty/util/AttributeKey;, "Lio/netty/util/AttributeKey<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 142
    iput-object p1, p0, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->head:Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    .line 143
    iput-object p2, p0, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->key:Lio/netty/util/AttributeKey;

    .line 144
    return-void
.end method

.method static synthetic access$000(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)Lio/netty/util/DefaultAttributeMap$DefaultAttribute;
    .locals 1
    .param p0, "x0"    # Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    .line 126
    iget-object v0, p0, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->next:Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    return-object v0
.end method

.method static synthetic access$002(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)Lio/netty/util/DefaultAttributeMap$DefaultAttribute;
    .locals 0
    .param p0, "x0"    # Lio/netty/util/DefaultAttributeMap$DefaultAttribute;
    .param p1, "x1"    # Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    .line 126
    iput-object p1, p0, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->next:Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    return-object p1
.end method

.method static synthetic access$102(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)Lio/netty/util/DefaultAttributeMap$DefaultAttribute;
    .locals 0
    .param p0, "x0"    # Lio/netty/util/DefaultAttributeMap$DefaultAttribute;
    .param p1, "x1"    # Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    .line 126
    iput-object p1, p0, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->prev:Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    return-object p1
.end method

.method static synthetic access$200(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)Lio/netty/util/AttributeKey;
    .locals 1
    .param p0, "x0"    # Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    .line 126
    iget-object v0, p0, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->key:Lio/netty/util/AttributeKey;

    return-object v0
.end method

.method static synthetic access$300(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)Z
    .locals 1
    .param p0, "x0"    # Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    .line 126
    iget-boolean v0, p0, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->removed:Z

    return v0
.end method

.method private remove0()V
    .locals 3

    .line 184
    .local p0, "this":Lio/netty/util/DefaultAttributeMap$DefaultAttribute;, "Lio/netty/util/DefaultAttributeMap$DefaultAttribute<TT;>;"
    iget-object v0, p0, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->head:Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    monitor-enter v0

    .line 185
    :try_start_0
    iget-object v1, p0, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->prev:Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    if-nez v1, :cond_0

    .line 187
    monitor-exit v0

    return-void

    .line 190
    :cond_0
    iget-object v2, p0, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->next:Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    iput-object v2, v1, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->next:Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    .line 192
    iget-object v2, p0, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->next:Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    if-eqz v2, :cond_1

    .line 193
    iput-object v1, v2, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->prev:Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    .line 198
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->prev:Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    .line 199
    iput-object v1, p0, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->next:Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    .line 200
    monitor-exit v0

    .line 201
    return-void

    .line 200
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public getAndRemove()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 170
    .local p0, "this":Lio/netty/util/DefaultAttributeMap$DefaultAttribute;, "Lio/netty/util/DefaultAttributeMap$DefaultAttribute<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->removed:Z

    .line 171
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 172
    .local v0, "oldValue":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->remove0()V

    .line 173
    return-object v0
.end method

.method public key()Lio/netty/util/AttributeKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/AttributeKey<",
            "TT;>;"
        }
    .end annotation

    .line 154
    .local p0, "this":Lio/netty/util/DefaultAttributeMap$DefaultAttribute;, "Lio/netty/util/DefaultAttributeMap$DefaultAttribute<TT;>;"
    iget-object v0, p0, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->key:Lio/netty/util/AttributeKey;

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 178
    .local p0, "this":Lio/netty/util/DefaultAttributeMap$DefaultAttribute;, "Lio/netty/util/DefaultAttributeMap$DefaultAttribute<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->removed:Z

    .line 179
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->set(Ljava/lang/Object;)V

    .line 180
    invoke-direct {p0}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->remove0()V

    .line 181
    return-void
.end method

.method public setIfAbsent(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 159
    .local p0, "this":Lio/netty/util/DefaultAttributeMap$DefaultAttribute;, "Lio/netty/util/DefaultAttributeMap$DefaultAttribute<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 160
    invoke-virtual {p0}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->get()Ljava/lang/Object;

    move-result-object v0

    .line 161
    .local v0, "old":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_0

    .line 162
    return-object v0

    .line 164
    .end local v0    # "old":Ljava/lang/Object;, "TT;"
    :cond_0
    goto :goto_0

    .line 165
    :cond_1
    return-object v0
.end method
