.class abstract Ljava9/util/stream/MatchOps$BooleanTerminalSink;
.super Ljava/lang/Object;
.source "MatchOps.java"

# interfaces
.implements Ljava9/util/stream/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/MatchOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "BooleanTerminalSink"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava9/util/stream/Sink<",
        "TT;>;"
    }
.end annotation


# instance fields
.field stop:Z

.field value:Z


# direct methods
.method constructor <init>(Ljava9/util/stream/MatchOps$MatchKind;)V
    .locals 1
    .param p1, "matchKind"    # Ljava9/util/stream/MatchOps$MatchKind;

    .line 256
    .local p0, "this":Ljava9/util/stream/MatchOps$BooleanTerminalSink;, "Ljava9/util/stream/MatchOps$BooleanTerminalSink<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    invoke-static {p1}, Ljava9/util/stream/MatchOps$MatchKind;->access$100(Ljava9/util/stream/MatchOps$MatchKind;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Ljava9/util/stream/MatchOps$BooleanTerminalSink;->value:Z

    .line 258
    return-void
.end method


# virtual methods
.method public cancellationRequested()Z
    .locals 1

    .line 266
    .local p0, "this":Ljava9/util/stream/MatchOps$BooleanTerminalSink;, "Ljava9/util/stream/MatchOps$BooleanTerminalSink<TT;>;"
    iget-boolean v0, p0, Ljava9/util/stream/MatchOps$BooleanTerminalSink;->stop:Z

    return v0
.end method

.method public getAndClearState()Z
    .locals 1

    .line 261
    .local p0, "this":Ljava9/util/stream/MatchOps$BooleanTerminalSink;, "Ljava9/util/stream/MatchOps$BooleanTerminalSink<TT;>;"
    iget-boolean v0, p0, Ljava9/util/stream/MatchOps$BooleanTerminalSink;->value:Z

    return v0
.end method
