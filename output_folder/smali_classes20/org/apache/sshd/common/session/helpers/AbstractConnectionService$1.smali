.class Lorg/apache/sshd/common/session/helpers/AbstractConnectionService$1;
.super Lorg/apache/sshd/common/io/AbstractIoWriteFuture;
.source "AbstractConnectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->sendGlobalResponse(Lorg/apache/sshd/common/util/buffer/Buffer;Ljava/lang/String;Lorg/apache/sshd/common/channel/RequestHandler$Result;Z)Lorg/apache/sshd/common/io/IoWriteFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;


# direct methods
.method constructor <init>(Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "this$0"    # Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;
    .param p2, "x0"    # Ljava/lang/Object;
    .param p3, "x1"    # Ljava/lang/Object;

    .line 912
    iput-object p1, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService$1;->this$0:Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;

    invoke-direct {p0, p2, p3}, Lorg/apache/sshd/common/io/AbstractIoWriteFuture;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 914
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService$1;->setValue(Ljava/lang/Object;)V

    .line 915
    return-void
.end method
