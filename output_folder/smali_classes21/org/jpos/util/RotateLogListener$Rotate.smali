.class public Lorg/jpos/util/RotateLogListener$Rotate;
.super Ljava/util/TimerTask;
.source "RotateLogListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jpos/util/RotateLogListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Rotate"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jpos/util/RotateLogListener;


# direct methods
.method public constructor <init>(Lorg/jpos/util/RotateLogListener;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jpos/util/RotateLogListener;

    .line 229
    iput-object p1, p0, Lorg/jpos/util/RotateLogListener$Rotate;->this$0:Lorg/jpos/util/RotateLogListener;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 232
    :try_start_0
    iget-object v0, p0, Lorg/jpos/util/RotateLogListener$Rotate;->this$0:Lorg/jpos/util/RotateLogListener;

    const-string v1, "time exceeded - log rotated"

    invoke-virtual {v0, v1}, Lorg/jpos/util/RotateLogListener;->logDebug(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lorg/jpos/util/RotateLogListener$Rotate;->this$0:Lorg/jpos/util/RotateLogListener;

    invoke-virtual {v0}, Lorg/jpos/util/RotateLogListener;->logRotate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    goto :goto_0

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lorg/jpos/util/RotateLogListener$Rotate;->this$0:Lorg/jpos/util/RotateLogListener;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jpos/util/RotateLogListener;->logDebug(Ljava/lang/String;)V

    .line 237
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
