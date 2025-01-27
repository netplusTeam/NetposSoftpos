.class abstract Ljava9/util/stream/FindOps$FindSink;
.super Ljava/lang/Object;
.source "FindOps.java"

# interfaces
.implements Ljava9/util/stream/TerminalSink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/FindOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "FindSink"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava9/util/stream/FindOps$FindSink$OfDouble;,
        Ljava9/util/stream/FindOps$FindSink$OfLong;,
        Ljava9/util/stream/FindOps$FindSink$OfInt;,
        Ljava9/util/stream/FindOps$FindSink$OfRef;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava9/util/stream/TerminalSink<",
        "TT;TO;>;"
    }
.end annotation


# instance fields
.field hasValue:Z

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 202
    .local p0, "this":Ljava9/util/stream/FindOps$FindSink;, "Ljava9/util/stream/FindOps$FindSink<TT;TO;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 206
    .local p0, "this":Ljava9/util/stream/FindOps$FindSink;, "Ljava9/util/stream/FindOps$FindSink<TT;TO;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Ljava9/util/stream/FindOps$FindSink;->hasValue:Z

    if-nez v0, :cond_0

    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava9/util/stream/FindOps$FindSink;->hasValue:Z

    .line 208
    iput-object p1, p0, Ljava9/util/stream/FindOps$FindSink;->value:Ljava/lang/Object;

    .line 210
    :cond_0
    return-void
.end method

.method public cancellationRequested()Z
    .locals 1

    .line 214
    .local p0, "this":Ljava9/util/stream/FindOps$FindSink;, "Ljava9/util/stream/FindOps$FindSink<TT;TO;>;"
    iget-boolean v0, p0, Ljava9/util/stream/FindOps$FindSink;->hasValue:Z

    return v0
.end method
