.class Ljava9/util/stream/MatchOps$2MatchSink;
.super Ljava9/util/stream/MatchOps$BooleanTerminalSink;
.source "MatchOps.java"

# interfaces
.implements Ljava9/util/stream/Sink$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava9/util/stream/MatchOps;->makeInt(Ljava9/util/function/IntPredicate;Ljava9/util/stream/MatchOps$MatchKind;)Ljava9/util/stream/TerminalOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MatchSink"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava9/util/stream/MatchOps$BooleanTerminalSink<",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava9/util/stream/Sink$OfInt;"
    }
.end annotation


# instance fields
.field final synthetic val$matchKind:Ljava9/util/stream/MatchOps$MatchKind;

.field final synthetic val$predicate:Ljava9/util/function/IntPredicate;


# direct methods
.method constructor <init>(Ljava9/util/stream/MatchOps$MatchKind;Ljava9/util/function/IntPredicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 113
    iput-object p1, p0, Ljava9/util/stream/MatchOps$2MatchSink;->val$matchKind:Ljava9/util/stream/MatchOps$MatchKind;

    iput-object p2, p0, Ljava9/util/stream/MatchOps$2MatchSink;->val$predicate:Ljava9/util/function/IntPredicate;

    .line 114
    invoke-direct {p0, p1}, Ljava9/util/stream/MatchOps$BooleanTerminalSink;-><init>(Ljava9/util/stream/MatchOps$MatchKind;)V

    .line 115
    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 2
    .param p1, "t"    # I

    .line 119
    iget-boolean v0, p0, Ljava9/util/stream/MatchOps$2MatchSink;->stop:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava9/util/stream/MatchOps$2MatchSink;->val$predicate:Ljava9/util/function/IntPredicate;

    invoke-interface {v0, p1}, Ljava9/util/function/IntPredicate;->test(I)Z

    move-result v0

    iget-object v1, p0, Ljava9/util/stream/MatchOps$2MatchSink;->val$matchKind:Ljava9/util/stream/MatchOps$MatchKind;

    invoke-static {v1}, Ljava9/util/stream/MatchOps$MatchKind;->access$000(Ljava9/util/stream/MatchOps$MatchKind;)Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava9/util/stream/MatchOps$2MatchSink;->stop:Z

    .line 121
    iget-object v0, p0, Ljava9/util/stream/MatchOps$2MatchSink;->val$matchKind:Ljava9/util/stream/MatchOps$MatchKind;

    invoke-static {v0}, Ljava9/util/stream/MatchOps$MatchKind;->access$100(Ljava9/util/stream/MatchOps$MatchKind;)Z

    move-result v0

    iput-boolean v0, p0, Ljava9/util/stream/MatchOps$2MatchSink;->value:Z

    .line 123
    :cond_0
    return-void
.end method
