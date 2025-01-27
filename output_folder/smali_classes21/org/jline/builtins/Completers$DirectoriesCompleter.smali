.class public Lorg/jline/builtins/Completers$DirectoriesCompleter;
.super Lorg/jline/builtins/Completers$FileNameCompleter;
.source "Completers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/builtins/Completers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DirectoriesCompleter"
.end annotation


# instance fields
.field private final currentDir:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "currentDir"    # Ljava/io/File;

    .line 225
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jline/builtins/Completers$DirectoriesCompleter;-><init>(Ljava/nio/file/Path;)V

    .line 226
    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;)V
    .locals 1
    .param p1, "currentDir"    # Ljava/nio/file/Path;

    .line 228
    invoke-direct {p0}, Lorg/jline/builtins/Completers$FileNameCompleter;-><init>()V

    .line 229
    new-instance v0, Lorg/jline/builtins/Completers$DirectoriesCompleter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lorg/jline/builtins/Completers$DirectoriesCompleter$$ExternalSyntheticLambda0;-><init>(Ljava/nio/file/Path;)V

    iput-object v0, p0, Lorg/jline/builtins/Completers$DirectoriesCompleter;->currentDir:Ljava/util/function/Supplier;

    .line 230
    return-void
.end method

.method public constructor <init>(Ljava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/nio/file/Path;",
            ">;)V"
        }
    .end annotation

    .line 232
    .local p1, "currentDir":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/nio/file/Path;>;"
    invoke-direct {p0}, Lorg/jline/builtins/Completers$FileNameCompleter;-><init>()V

    .line 233
    iput-object p1, p0, Lorg/jline/builtins/Completers$DirectoriesCompleter;->currentDir:Ljava/util/function/Supplier;

    .line 234
    return-void
.end method

.method static synthetic lambda$new$0(Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 0
    .param p0, "currentDir"    # Ljava/nio/file/Path;

    .line 229
    return-object p0
.end method


# virtual methods
.method protected accept(Ljava/nio/file/Path;)Z
    .locals 2
    .param p1, "path"    # Ljava/nio/file/Path;

    .line 243
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v1}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-super {p0, p1}, Lorg/jline/builtins/Completers$FileNameCompleter;->accept(Ljava/nio/file/Path;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected getUserDir()Ljava/nio/file/Path;
    .locals 1

    .line 238
    iget-object v0, p0, Lorg/jline/builtins/Completers$DirectoriesCompleter;->currentDir:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/Path;

    return-object v0
.end method
