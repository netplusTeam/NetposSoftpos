.class final Ljava9/util/stream/Streams$2;
.super Ljava/lang/Object;
.source "Streams.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava9/util/stream/Streams;->composedClose(Ljava9/util/stream/BaseStream;Ljava9/util/stream/BaseStream;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Ljava9/util/stream/BaseStream;

.field final synthetic val$b:Ljava9/util/stream/BaseStream;


# direct methods
.method constructor <init>(Ljava9/util/stream/BaseStream;Ljava9/util/stream/BaseStream;)V
    .locals 0

    .line 871
    iput-object p1, p0, Ljava9/util/stream/Streams$2;->val$a:Ljava9/util/stream/BaseStream;

    iput-object p2, p0, Ljava9/util/stream/Streams$2;->val$b:Ljava9/util/stream/BaseStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 875
    :try_start_0
    iget-object v0, p0, Ljava9/util/stream/Streams$2;->val$a:Ljava9/util/stream/BaseStream;

    invoke-interface {v0}, Ljava9/util/stream/BaseStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 890
    nop

    .line 891
    iget-object v0, p0, Ljava9/util/stream/Streams$2;->val$b:Ljava9/util/stream/BaseStream;

    invoke-interface {v0}, Ljava9/util/stream/BaseStream;->close()V

    .line 892
    return-void

    .line 877
    :catchall_0
    move-exception v0

    .line 879
    .local v0, "e1":Ljava/lang/Throwable;
    :try_start_1
    iget-object v1, p0, Ljava9/util/stream/Streams$2;->val$b:Ljava9/util/stream/BaseStream;

    invoke-interface {v1}, Ljava9/util/stream/BaseStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 882
    goto :goto_0

    .line 881
    :catchall_1
    move-exception v1

    .line 883
    :goto_0
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-nez v1, :cond_1

    .line 885
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_0

    .line 886
    move-object v1, v0

    check-cast v1, Ljava/lang/Error;

    throw v1

    .line 888
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 884
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1
.end method
