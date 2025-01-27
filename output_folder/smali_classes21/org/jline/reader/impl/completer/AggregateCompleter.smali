.class public Lorg/jline/reader/impl/completer/AggregateCompleter;
.super Ljava/lang/Object;
.source "AggregateCompleter.java"

# interfaces
.implements Lorg/jline/reader/Completer;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final completers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/jline/reader/Completer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/jline/reader/Completer;",
            ">;)V"
        }
    .end annotation

    .line 48
    .local p1, "completers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jline/reader/Completer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    if-eqz p1, :cond_0

    .line 50
    iput-object p1, p0, Lorg/jline/reader/impl/completer/AggregateCompleter;->completers:Ljava/util/Collection;

    .line 51
    return-void

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public varargs constructor <init>([Lorg/jline/reader/Completer;)V
    .locals 1
    .param p1, "completers"    # [Lorg/jline/reader/Completer;

    .line 39
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jline/reader/impl/completer/AggregateCompleter;-><init>(Ljava/util/Collection;)V

    .line 40
    return-void
.end method

.method static synthetic lambda$complete$0(Lorg/jline/reader/LineReader;Lorg/jline/reader/ParsedLine;Ljava/util/List;Lorg/jline/reader/Completer;)V
    .locals 0
    .param p0, "reader"    # Lorg/jline/reader/LineReader;
    .param p1, "line"    # Lorg/jline/reader/ParsedLine;
    .param p2, "candidates"    # Ljava/util/List;
    .param p3, "c"    # Lorg/jline/reader/Completer;

    .line 73
    invoke-interface {p3, p0, p1, p2}, Lorg/jline/reader/Completer;->complete(Lorg/jline/reader/LineReader;Lorg/jline/reader/ParsedLine;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public complete(Lorg/jline/reader/LineReader;Lorg/jline/reader/ParsedLine;Ljava/util/List;)V
    .locals 2
    .param p1, "reader"    # Lorg/jline/reader/LineReader;
    .param p2, "line"    # Lorg/jline/reader/ParsedLine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jline/reader/LineReader;",
            "Lorg/jline/reader/ParsedLine;",
            "Ljava/util/List<",
            "Lorg/jline/reader/Candidate;",
            ">;)V"
        }
    .end annotation

    .line 71
    .local p3, "candidates":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lorg/jline/reader/impl/completer/AggregateCompleter;->completers:Ljava/util/Collection;

    new-instance v1, Lorg/jline/reader/impl/completer/AggregateCompleter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2, p3}, Lorg/jline/reader/impl/completer/AggregateCompleter$$ExternalSyntheticLambda0;-><init>(Lorg/jline/reader/LineReader;Lorg/jline/reader/ParsedLine;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 74
    return-void
.end method

.method public getCompleters()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/jline/reader/Completer;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lorg/jline/reader/impl/completer/AggregateCompleter;->completers:Ljava/util/Collection;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "{completers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jline/reader/impl/completer/AggregateCompleter;->completers:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
