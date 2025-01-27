.class public final synthetic Lorg/jline/builtins/Completers$FileNameCompleter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/jline/builtins/Completers$FileNameCompleter;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Lorg/jline/reader/LineReader;

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/jline/builtins/Completers$FileNameCompleter;Ljava/lang/String;Ljava/util/List;Lorg/jline/reader/LineReader;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jline/builtins/Completers$FileNameCompleter$$ExternalSyntheticLambda1;->f$0:Lorg/jline/builtins/Completers$FileNameCompleter;

    iput-object p2, p0, Lorg/jline/builtins/Completers$FileNameCompleter$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lorg/jline/builtins/Completers$FileNameCompleter$$ExternalSyntheticLambda1;->f$2:Ljava/util/List;

    iput-object p4, p0, Lorg/jline/builtins/Completers$FileNameCompleter$$ExternalSyntheticLambda1;->f$3:Lorg/jline/reader/LineReader;

    iput-object p5, p0, Lorg/jline/builtins/Completers$FileNameCompleter$$ExternalSyntheticLambda1;->f$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lorg/jline/builtins/Completers$FileNameCompleter$$ExternalSyntheticLambda1;->f$0:Lorg/jline/builtins/Completers$FileNameCompleter;

    iget-object v1, p0, Lorg/jline/builtins/Completers$FileNameCompleter$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lorg/jline/builtins/Completers$FileNameCompleter$$ExternalSyntheticLambda1;->f$2:Ljava/util/List;

    iget-object v3, p0, Lorg/jline/builtins/Completers$FileNameCompleter$$ExternalSyntheticLambda1;->f$3:Lorg/jline/reader/LineReader;

    iget-object v4, p0, Lorg/jline/builtins/Completers$FileNameCompleter$$ExternalSyntheticLambda1;->f$4:Ljava/lang/String;

    move-object v5, p1

    check-cast v5, Ljava/nio/file/Path;

    invoke-virtual/range {v0 .. v5}, Lorg/jline/builtins/Completers$FileNameCompleter;->lambda$complete$0$org-jline-builtins-Completers$FileNameCompleter(Ljava/lang/String;Ljava/util/List;Lorg/jline/reader/LineReader;Ljava/lang/String;Ljava/nio/file/Path;)V

    return-void
.end method
