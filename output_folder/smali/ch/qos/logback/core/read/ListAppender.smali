.class public Lch/qos/logback/core/read/ListAppender;
.super Lch/qos/logback/core/AppenderBase;
.source "ListAppender.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lch/qos/logback/core/AppenderBase<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    .local p0, "this":Lch/qos/logback/core/read/ListAppender;, "Lch/qos/logback/core/read/ListAppender<TE;>;"
    invoke-direct {p0}, Lch/qos/logback/core/AppenderBase;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lch/qos/logback/core/read/ListAppender;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected append(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 26
    .local p0, "this":Lch/qos/logback/core/read/ListAppender;, "Lch/qos/logback/core/read/ListAppender<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lch/qos/logback/core/read/ListAppender;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    return-void
.end method
