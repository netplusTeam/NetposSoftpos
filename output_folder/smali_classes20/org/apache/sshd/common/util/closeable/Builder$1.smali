.class Lorg/apache/sshd/common/util/closeable/Builder$1;
.super Lorg/apache/sshd/common/util/closeable/SimpleCloseable;
.source "Builder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/sshd/common/util/closeable/Builder;->run(Ljava/lang/Object;Ljava/lang/Runnable;)Lorg/apache/sshd/common/util/closeable/Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/sshd/common/util/closeable/Builder;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lorg/apache/sshd/common/util/closeable/Builder;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/sshd/common/util/closeable/Builder;
    .param p2, "id"    # Ljava/lang/Object;
    .param p3, "lock"    # Ljava/lang/Object;

    .line 43
    iput-object p1, p0, Lorg/apache/sshd/common/util/closeable/Builder$1;->this$0:Lorg/apache/sshd/common/util/closeable/Builder;

    iput-object p4, p0, Lorg/apache/sshd/common/util/closeable/Builder$1;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0, p2, p3}, Lorg/apache/sshd/common/util/closeable/SimpleCloseable;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected doClose(Z)V
    .locals 1
    .param p1, "immediately"    # Z

    .line 47
    :try_start_0
    iget-object v0, p0, Lorg/apache/sshd/common/util/closeable/Builder$1;->val$r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    invoke-super {p0, p1}, Lorg/apache/sshd/common/util/closeable/SimpleCloseable;->doClose(Z)V

    .line 50
    nop

    .line 51
    return-void

    .line 49
    :catchall_0
    move-exception v0

    invoke-super {p0, p1}, Lorg/apache/sshd/common/util/closeable/SimpleCloseable;->doClose(Z)V

    .line 50
    throw v0
.end method
