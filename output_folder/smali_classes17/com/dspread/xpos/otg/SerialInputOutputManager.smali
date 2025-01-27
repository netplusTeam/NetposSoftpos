.class public Lcom/dspread/xpos/otg/SerialInputOutputManager;
.super Ljava/lang/Object;
.source "SerialInputOutputManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dspread/xpos/otg/SerialInputOutputManager$a;,
        Lcom/dspread/xpos/otg/SerialInputOutputManager$State;
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/String; = "SerialInputOutputManager"

.field private static final g:Z = true

.field private static final h:I = 0xc8

.field private static final i:I = 0x1000


# instance fields
.field private final a:Lcom/dspread/xpos/otg/k;

.field private final b:Ljava/nio/ByteBuffer;

.field private final c:Ljava/nio/ByteBuffer;

.field private d:Lcom/dspread/xpos/otg/SerialInputOutputManager$State;

.field private e:Lcom/dspread/xpos/otg/SerialInputOutputManager$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/dspread/xpos/otg/k;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dspread/xpos/otg/SerialInputOutputManager;-><init>(Lcom/dspread/xpos/otg/k;Lcom/dspread/xpos/otg/SerialInputOutputManager$a;)V

    return-void
.end method

.method public constructor <init>(Lcom/dspread/xpos/otg/k;Lcom/dspread/xpos/otg/SerialInputOutputManager$a;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const/16 v0, 0x1000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/dspread/xpos/otg/SerialInputOutputManager;->b:Ljava/nio/ByteBuffer;

    .line 6
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/dspread/xpos/otg/SerialInputOutputManager;->c:Ljava/nio/ByteBuffer;

    .line 15
    sget-object v0, Lcom/dspread/xpos/otg/SerialInputOutputManager$State;->STOPPED:Lcom/dspread/xpos/otg/SerialInputOutputManager$State;

    iput-object v0, p0, Lcom/dspread/xpos/otg/SerialInputOutputManager;->d:Lcom/dspread/xpos/otg/SerialInputOutputManager$State;

    .line 44
    iput-object p1, p0, Lcom/dspread/xpos/otg/SerialInputOutputManager;->a:Lcom/dspread/xpos/otg/k;

    .line 45
    iput-object p2, p0, Lcom/dspread/xpos/otg/SerialInputOutputManager;->e:Lcom/dspread/xpos/otg/SerialInputOutputManager$a;

    return-void
.end method

.method private declared-synchronized b()Lcom/dspread/xpos/otg/SerialInputOutputManager$State;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/dspread/xpos/otg/SerialInputOutputManager;->d:Lcom/dspread/xpos/otg/SerialInputOutputManager$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/otg/SerialInputOutputManager;->a:Lcom/dspread/xpos/otg/k;

    iget-object v1, p0, Lcom/dspread/xpos/otg/SerialInputOutputManager;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/16 v2, 0xc8

    invoke-interface {v0, v1, v2}, Lcom/dspread/xpos/otg/k;->a([BI)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 3
    sget-object v3, Lcom/dspread/xpos/otg/SerialInputOutputManager;->f:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read data len="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {p0}, Lcom/dspread/xpos/otg/SerialInputOutputManager;->a()Lcom/dspread/xpos/otg/SerialInputOutputManager$a;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 6
    new-array v4, v0, [B

    .line 7
    iget-object v5, p0, Lcom/dspread/xpos/otg/SerialInputOutputManager;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v4, v1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 8
    invoke-interface {v3, v4}, Lcom/dspread/xpos/otg/SerialInputOutputManager$a;->a([B)V

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/dspread/xpos/otg/SerialInputOutputManager;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_1
    const/4 v0, 0x0

    .line 15
    iget-object v3, p0, Lcom/dspread/xpos/otg/SerialInputOutputManager;->c:Ljava/nio/ByteBuffer;

    monitor-enter v3

    .line 16
    :try_start_0
    iget-object v4, p0, Lcom/dspread/xpos/otg/SerialInputOutputManager;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/Buffer;->position()I

    move-result v4

    if-lez v4, :cond_2

    .line 18
    new-array v0, v4, [B

    .line 19
    iget-object v5, p0, Lcom/dspread/xpos/otg/SerialInputOutputManager;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 20
    iget-object v5, p0, Lcom/dspread/xpos/otg/SerialInputOutputManager;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v0, v1, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 21
    iget-object v1, p0, Lcom/dspread/xpos/otg/SerialInputOutputManager;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 23
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    .line 26
    sget-object v1, Lcom/dspread/xpos/otg/SerialInputOutputManager;->f:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Writing data len="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget-object v1, p0, Lcom/dspread/xpos/otg/SerialInputOutputManager;->a:Lcom/dspread/xpos/otg/k;

    invoke-interface {v1, v0, v2}, Lcom/dspread/xpos/otg/k;->b([BI)I

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    .line 29
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a()Lcom/dspread/xpos/otg/SerialInputOutputManager$a;
    .locals 1

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/dspread/xpos/otg/SerialInputOutputManager;->e:Lcom/dspread/xpos/otg/SerialInputOutputManager$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 2
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/dspread/xpos/otg/SerialInputOutputManager$a;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/dspread/xpos/otg/SerialInputOutputManager;->e:Lcom/dspread/xpos/otg/SerialInputOutputManager$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 1
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a([B)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/dspread/xpos/otg/SerialInputOutputManager;->c:Ljava/nio/ByteBuffer;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/dspread/xpos/otg/SerialInputOutputManager;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public declared-synchronized d()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/dspread/xpos/otg/SerialInputOutputManager;->f:Ljava/lang/String;

    const-string v1, "Stop requested"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-object v0, Lcom/dspread/xpos/otg/SerialInputOutputManager$State;->STOPPING:Lcom/dspread/xpos/otg/SerialInputOutputManager$State;

    iput-object v0, p0, Lcom/dspread/xpos/otg/SerialInputOutputManager;->d:Lcom/dspread/xpos/otg/SerialInputOutputManager$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/dspread/xpos/otg/SerialInputOutputManager;->b()Lcom/dspread/xpos/otg/SerialInputOutputManager$State;

    move-result-object v0

    sget-object v1, Lcom/dspread/xpos/otg/SerialInputOutputManager$State;->STOPPED:Lcom/dspread/xpos/otg/SerialInputOutputManager$State;

    if-ne v0, v1, :cond_2

    .line 5
    sget-object v0, Lcom/dspread/xpos/otg/SerialInputOutputManager$State;->RUNNING:Lcom/dspread/xpos/otg/SerialInputOutputManager$State;

    iput-object v0, p0, Lcom/dspread/xpos/otg/SerialInputOutputManager;->d:Lcom/dspread/xpos/otg/SerialInputOutputManager$State;

    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 8
    sget-object v0, Lcom/dspread/xpos/otg/SerialInputOutputManager;->f:Ljava/lang/String;

    const-string v1, "Running .."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/dspread/xpos/otg/SerialInputOutputManager;->b()Lcom/dspread/xpos/otg/SerialInputOutputManager$State;

    move-result-object v0

    sget-object v1, Lcom/dspread/xpos/otg/SerialInputOutputManager$State;->RUNNING:Lcom/dspread/xpos/otg/SerialInputOutputManager$State;

    if-eq v0, v1, :cond_0

    .line 12
    sget-object v0, Lcom/dspread/xpos/otg/SerialInputOutputManager;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/dspread/xpos/otg/SerialInputOutputManager;->b()Lcom/dspread/xpos/otg/SerialInputOutputManager$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 24
    monitor-enter p0

    .line 25
    :try_start_2
    sget-object v1, Lcom/dspread/xpos/otg/SerialInputOutputManager$State;->STOPPED:Lcom/dspread/xpos/otg/SerialInputOutputManager$State;

    iput-object v1, p0, Lcom/dspread/xpos/otg/SerialInputOutputManager;->d:Lcom/dspread/xpos/otg/SerialInputOutputManager$State;

    .line 26
    const-string v1, "Stopped."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 28
    :cond_0
    :try_start_3
    invoke-direct {p0}, Lcom/dspread/xpos/otg/SerialInputOutputManager;->c()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 31
    :try_start_4
    sget-object v1, Lcom/dspread/xpos/otg/SerialInputOutputManager;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Run ending due to exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32
    invoke-virtual {p0}, Lcom/dspread/xpos/otg/SerialInputOutputManager;->a()Lcom/dspread/xpos/otg/SerialInputOutputManager$a;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 34
    invoke-interface {v2, v0}, Lcom/dspread/xpos/otg/SerialInputOutputManager$a;->a(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 37
    :cond_1
    monitor-enter p0

    .line 38
    :try_start_5
    sget-object v0, Lcom/dspread/xpos/otg/SerialInputOutputManager$State;->STOPPED:Lcom/dspread/xpos/otg/SerialInputOutputManager$State;

    iput-object v0, p0, Lcom/dspread/xpos/otg/SerialInputOutputManager;->d:Lcom/dspread/xpos/otg/SerialInputOutputManager$State;

    .line 39
    const-string v0, "Stopped."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    monitor-exit p0

    :goto_1
    return-void

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    .line 41
    :goto_2
    monitor-enter p0

    .line 42
    :try_start_6
    sget-object v1, Lcom/dspread/xpos/otg/SerialInputOutputManager$State;->STOPPED:Lcom/dspread/xpos/otg/SerialInputOutputManager$State;

    iput-object v1, p0, Lcom/dspread/xpos/otg/SerialInputOutputManager;->d:Lcom/dspread/xpos/otg/SerialInputOutputManager$State;

    .line 43
    sget-object v1, Lcom/dspread/xpos/otg/SerialInputOutputManager;->f:Ljava/lang/String;

    const-string v2, "Stopped."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 45
    throw v0

    :catchall_3
    move-exception v0

    .line 46
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    .line 47
    :cond_2
    :try_start_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_4
    move-exception v0

    .line 50
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v0
.end method
