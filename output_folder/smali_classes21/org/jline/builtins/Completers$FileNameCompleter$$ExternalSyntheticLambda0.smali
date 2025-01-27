.class public final synthetic Lorg/jline/builtins/Completers$FileNameCompleter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/nio/file/DirectoryStream$Filter;


# instance fields
.field public final synthetic f$0:Lorg/jline/builtins/Completers$FileNameCompleter;


# direct methods
.method public synthetic constructor <init>(Lorg/jline/builtins/Completers$FileNameCompleter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jline/builtins/Completers$FileNameCompleter$$ExternalSyntheticLambda0;->f$0:Lorg/jline/builtins/Completers$FileNameCompleter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/jline/builtins/Completers$FileNameCompleter$$ExternalSyntheticLambda0;->f$0:Lorg/jline/builtins/Completers$FileNameCompleter;

    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {v0, p1}, Lorg/jline/builtins/Completers$FileNameCompleter;->accept(Ljava/nio/file/Path;)Z

    move-result p1

    return p1
.end method
