.class Lorg/jpos/q2/qbean/SpaceLet$1;
.super Ljava/lang/Thread;
.source "SpaceLet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jpos/q2/qbean/SpaceLet;->launch(Lorg/jdom2/Element;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jpos/q2/qbean/SpaceLet;

.field final synthetic val$script:Ljava/lang/String;

.field final synthetic val$source:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/jpos/q2/qbean/SpaceLet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jpos/q2/qbean/SpaceLet;
    .param p2, "x0"    # Ljava/lang/String;

    .line 267
    iput-object p1, p0, Lorg/jpos/q2/qbean/SpaceLet$1;->this$0:Lorg/jpos/q2/qbean/SpaceLet;

    iput-object p3, p0, Lorg/jpos/q2/qbean/SpaceLet$1;->val$script:Ljava/lang/String;

    iput-object p4, p0, Lorg/jpos/q2/qbean/SpaceLet$1;->val$source:Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 270
    :try_start_0
    iget-object v0, p0, Lorg/jpos/q2/qbean/SpaceLet$1;->this$0:Lorg/jpos/q2/qbean/SpaceLet;

    invoke-static {v0}, Lorg/jpos/q2/qbean/SpaceLet;->access$000(Lorg/jpos/q2/qbean/SpaceLet;)Lbsh/Interpreter;

    move-result-object v1

    iget-object v2, p0, Lorg/jpos/q2/qbean/SpaceLet$1;->val$script:Ljava/lang/String;

    iget-object v3, p0, Lorg/jpos/q2/qbean/SpaceLet$1;->val$source:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lorg/jpos/q2/qbean/SpaceLet;->access$100(Lorg/jpos/q2/qbean/SpaceLet;Lbsh/Interpreter;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    goto :goto_0

    .line 271
    :catchall_0
    move-exception v0

    .line 272
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lorg/jpos/q2/qbean/SpaceLet$1;->this$0:Lorg/jpos/q2/qbean/SpaceLet;

    invoke-virtual {v1}, Lorg/jpos/q2/qbean/SpaceLet;->getLog()Lorg/jpos/util/Log;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;)V

    .line 274
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
