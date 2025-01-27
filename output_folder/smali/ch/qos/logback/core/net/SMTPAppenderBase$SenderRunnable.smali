.class Lch/qos/logback/core/net/SMTPAppenderBase$SenderRunnable;
.super Ljava/lang/Object;
.source "SMTPAppenderBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/qos/logback/core/net/SMTPAppenderBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SenderRunnable"
.end annotation


# instance fields
.field final cyclicBuffer:Lch/qos/logback/core/helpers/CyclicBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lch/qos/logback/core/helpers/CyclicBuffer<",
            "TE;>;"
        }
    .end annotation
.end field

.field final e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lch/qos/logback/core/net/SMTPAppenderBase;


# direct methods
.method constructor <init>(Lch/qos/logback/core/net/SMTPAppenderBase;Lch/qos/logback/core/helpers/CyclicBuffer;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/helpers/CyclicBuffer<",
            "TE;>;TE;)V"
        }
    .end annotation

    .line 664
    .local p0, "this":Lch/qos/logback/core/net/SMTPAppenderBase$SenderRunnable;, "Lch/qos/logback/core/net/SMTPAppenderBase<TE;>.SenderRunnable;"
    .local p2, "cyclicBuffer":Lch/qos/logback/core/helpers/CyclicBuffer;, "Lch/qos/logback/core/helpers/CyclicBuffer<TE;>;"
    .local p3, "e":Ljava/lang/Object;, "TE;"
    iput-object p1, p0, Lch/qos/logback/core/net/SMTPAppenderBase$SenderRunnable;->this$0:Lch/qos/logback/core/net/SMTPAppenderBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 665
    iput-object p2, p0, Lch/qos/logback/core/net/SMTPAppenderBase$SenderRunnable;->cyclicBuffer:Lch/qos/logback/core/helpers/CyclicBuffer;

    .line 666
    iput-object p3, p0, Lch/qos/logback/core/net/SMTPAppenderBase$SenderRunnable;->e:Ljava/lang/Object;

    .line 667
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 670
    .local p0, "this":Lch/qos/logback/core/net/SMTPAppenderBase$SenderRunnable;, "Lch/qos/logback/core/net/SMTPAppenderBase<TE;>.SenderRunnable;"
    iget-object v0, p0, Lch/qos/logback/core/net/SMTPAppenderBase$SenderRunnable;->this$0:Lch/qos/logback/core/net/SMTPAppenderBase;

    iget-object v1, p0, Lch/qos/logback/core/net/SMTPAppenderBase$SenderRunnable;->cyclicBuffer:Lch/qos/logback/core/helpers/CyclicBuffer;

    iget-object v2, p0, Lch/qos/logback/core/net/SMTPAppenderBase$SenderRunnable;->e:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lch/qos/logback/core/net/SMTPAppenderBase;->sendBuffer(Lch/qos/logback/core/helpers/CyclicBuffer;Ljava/lang/Object;)V

    .line 671
    return-void
.end method
