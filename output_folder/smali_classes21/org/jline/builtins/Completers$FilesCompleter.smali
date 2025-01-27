.class public Lorg/jline/builtins/Completers$FilesCompleter;
.super Lorg/jline/builtins/Completers$FileNameCompleter;
.source "Completers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/builtins/Completers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FilesCompleter"
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

.field private final namePattern:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .param p1, "currentDir"    # Ljava/io/File;

    .line 253
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/jline/builtins/Completers$FilesCompleter;-><init>(Ljava/nio/file/Path;Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .param p1, "currentDir"    # Ljava/io/File;
    .param p2, "namePattern"    # Ljava/lang/String;

    .line 257
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/jline/builtins/Completers$FilesCompleter;-><init>(Ljava/nio/file/Path;Ljava/lang/String;)V

    .line 258
    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;)V
    .locals 1
    .param p1, "currentDir"    # Ljava/nio/file/Path;

    .line 261
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jline/builtins/Completers$FilesCompleter;-><init>(Ljava/nio/file/Path;Ljava/lang/String;)V

    .line 262
    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;Ljava/lang/String;)V
    .locals 1
    .param p1, "currentDir"    # Ljava/nio/file/Path;
    .param p2, "namePattern"    # Ljava/lang/String;

    .line 264
    invoke-direct {p0}, Lorg/jline/builtins/Completers$FileNameCompleter;-><init>()V

    .line 265
    new-instance v0, Lorg/jline/builtins/Completers$FilesCompleter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lorg/jline/builtins/Completers$FilesCompleter$$ExternalSyntheticLambda0;-><init>(Ljava/nio/file/Path;)V

    iput-object v0, p0, Lorg/jline/builtins/Completers$FilesCompleter;->currentDir:Ljava/util/function/Supplier;

    .line 266
    invoke-direct {p0, p2}, Lorg/jline/builtins/Completers$FilesCompleter;->compilePattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/builtins/Completers$FilesCompleter;->namePattern:Ljava/lang/String;

    .line 267
    return-void
.end method

.method public constructor <init>(Ljava/util/function/Supplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/nio/file/Path;",
            ">;)V"
        }
    .end annotation

    .line 270
    .local p1, "currentDir":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/nio/file/Path;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jline/builtins/Completers$FilesCompleter;-><init>(Ljava/util/function/Supplier;Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method public constructor <init>(Ljava/util/function/Supplier;Ljava/lang/String;)V
    .locals 1
    .param p2, "namePattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/nio/file/Path;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 273
    .local p1, "currentDir":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/nio/file/Path;>;"
    invoke-direct {p0}, Lorg/jline/builtins/Completers$FileNameCompleter;-><init>()V

    .line 274
    iput-object p1, p0, Lorg/jline/builtins/Completers$FilesCompleter;->currentDir:Ljava/util/function/Supplier;

    .line 275
    invoke-direct {p0, p2}, Lorg/jline/builtins/Completers$FilesCompleter;->compilePattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/builtins/Completers$FilesCompleter;->namePattern:Ljava/lang/String;

    .line 276
    return-void
.end method

.method private compilePattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "pattern"    # Ljava/lang/String;

    .line 279
    if-nez p1, :cond_0

    .line 280
    const/4 v0, 0x0

    return-object v0

    .line 282
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 283
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 284
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 285
    .local v2, "ch":C
    const/16 v3, 0x5c

    if-ne v2, v3, :cond_1

    .line 286
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 287
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 288
    :cond_1
    const/16 v4, 0x2e

    if-ne v2, v4, :cond_2

    .line 289
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 290
    :cond_2
    const/16 v3, 0x2a

    if-ne v2, v3, :cond_3

    .line 291
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 293
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 283
    .end local v2    # "ch":C
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 296
    .end local v1    # "i":I
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static synthetic lambda$new$0(Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 0
    .param p0, "currentDir"    # Ljava/nio/file/Path;

    .line 265
    return-object p0
.end method


# virtual methods
.method protected accept(Ljava/nio/file/Path;)Z
    .locals 3
    .param p1, "path"    # Ljava/nio/file/Path;

    .line 306
    iget-object v0, p0, Lorg/jline/builtins/Completers$FilesCompleter;->namePattern:Ljava/lang/String;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v1}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 309
    :cond_0
    invoke-interface {p1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/jline/builtins/Completers$FilesCompleter;->namePattern:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-super {p0, p1}, Lorg/jline/builtins/Completers$FileNameCompleter;->accept(Ljava/nio/file/Path;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 307
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lorg/jline/builtins/Completers$FileNameCompleter;->accept(Ljava/nio/file/Path;)Z

    move-result v0

    return v0
.end method

.method protected getUserDir()Ljava/nio/file/Path;
    .locals 1

    .line 301
    iget-object v0, p0, Lorg/jline/builtins/Completers$FilesCompleter;->currentDir:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/Path;

    return-object v0
.end method
