.class Lch/qos/logback/core/net/AbstractSocketAppender$1;
.super Ljava/lang/Object;
.source "AbstractSocketAppender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/qos/logback/core/net/AbstractSocketAppender;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/qos/logback/core/net/AbstractSocketAppender;


# direct methods
.method constructor <init>(Lch/qos/logback/core/net/AbstractSocketAppender;)V
    .locals 0

    .line 147
    .local p0, "this":Lch/qos/logback/core/net/AbstractSocketAppender$1;, "Lch/qos/logback/core/net/AbstractSocketAppender.1;"
    iput-object p1, p0, Lch/qos/logback/core/net/AbstractSocketAppender$1;->this$0:Lch/qos/logback/core/net/AbstractSocketAppender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 150
    .local p0, "this":Lch/qos/logback/core/net/AbstractSocketAppender$1;, "Lch/qos/logback/core/net/AbstractSocketAppender.1;"
    iget-object v0, p0, Lch/qos/logback/core/net/AbstractSocketAppender$1;->this$0:Lch/qos/logback/core/net/AbstractSocketAppender;

    invoke-static {v0}, Lch/qos/logback/core/net/AbstractSocketAppender;->access$000(Lch/qos/logback/core/net/AbstractSocketAppender;)V

    .line 151
    return-void
.end method
