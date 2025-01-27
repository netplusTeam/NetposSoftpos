.class public final synthetic Lorg/jline/builtins/Completers$TreeCompleter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/jline/reader/Completer;


# instance fields
.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jline/builtins/Completers$TreeCompleter$$ExternalSyntheticLambda1;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final complete(Lorg/jline/reader/LineReader;Lorg/jline/reader/ParsedLine;Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lorg/jline/builtins/Completers$TreeCompleter$$ExternalSyntheticLambda1;->f$0:Ljava/util/List;

    invoke-static {v0, p1, p2, p3}, Lorg/jline/builtins/Completers$TreeCompleter;->lambda$node$0(Ljava/util/List;Lorg/jline/reader/LineReader;Lorg/jline/reader/ParsedLine;Ljava/util/List;)V

    return-void
.end method
