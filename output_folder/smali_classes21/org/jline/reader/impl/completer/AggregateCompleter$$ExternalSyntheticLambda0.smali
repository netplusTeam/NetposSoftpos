.class public final synthetic Lorg/jline/reader/impl/completer/AggregateCompleter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/jline/reader/LineReader;

.field public final synthetic f$1:Lorg/jline/reader/ParsedLine;

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lorg/jline/reader/LineReader;Lorg/jline/reader/ParsedLine;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jline/reader/impl/completer/AggregateCompleter$$ExternalSyntheticLambda0;->f$0:Lorg/jline/reader/LineReader;

    iput-object p2, p0, Lorg/jline/reader/impl/completer/AggregateCompleter$$ExternalSyntheticLambda0;->f$1:Lorg/jline/reader/ParsedLine;

    iput-object p3, p0, Lorg/jline/reader/impl/completer/AggregateCompleter$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lorg/jline/reader/impl/completer/AggregateCompleter$$ExternalSyntheticLambda0;->f$0:Lorg/jline/reader/LineReader;

    iget-object v1, p0, Lorg/jline/reader/impl/completer/AggregateCompleter$$ExternalSyntheticLambda0;->f$1:Lorg/jline/reader/ParsedLine;

    iget-object v2, p0, Lorg/jline/reader/impl/completer/AggregateCompleter$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    check-cast p1, Lorg/jline/reader/Completer;

    invoke-static {v0, v1, v2, p1}, Lorg/jline/reader/impl/completer/AggregateCompleter;->lambda$complete$0(Lorg/jline/reader/LineReader;Lorg/jline/reader/ParsedLine;Ljava/util/List;Lorg/jline/reader/Completer;)V

    return-void
.end method
