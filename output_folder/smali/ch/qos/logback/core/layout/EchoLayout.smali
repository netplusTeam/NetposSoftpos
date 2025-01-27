.class public Lch/qos/logback/core/layout/EchoLayout;
.super Lch/qos/logback/core/LayoutBase;
.source "EchoLayout.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lch/qos/logback/core/LayoutBase<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    .local p0, "this":Lch/qos/logback/core/layout/EchoLayout;, "Lch/qos/logback/core/layout/EchoLayout<TE;>;"
    invoke-direct {p0}, Lch/qos/logback/core/LayoutBase;-><init>()V

    return-void
.end method


# virtual methods
.method public doLayout(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 27
    .local p0, "this":Lch/qos/logback/core/layout/EchoLayout;, "Lch/qos/logback/core/layout/EchoLayout<TE;>;"
    .local p1, "event":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lch/qos/logback/core/CoreConstants;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
