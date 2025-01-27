.class public Lorg/jline/console/CommandMethods;
.super Ljava/lang/Object;
.source "CommandMethods.java"


# instance fields
.field compileCompleter:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/jline/reader/Completer;",
            ">;>;"
        }
    .end annotation
.end field

.field execute:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Lorg/jline/console/CommandInput;",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/function/Consumer;Ljava/util/function/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lorg/jline/console/CommandInput;",
            ">;",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/jline/reader/Completer;",
            ">;>;)V"
        }
    .end annotation

    .line 26
    .local p1, "execute":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lorg/jline/console/CommandInput;>;"
    .local p2, "compileCompleter":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Ljava/util/List<Lorg/jline/reader/Completer;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lorg/jline/console/CommandMethods$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lorg/jline/console/CommandMethods$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;)V

    iput-object v0, p0, Lorg/jline/console/CommandMethods;->execute:Ljava/util/function/Function;

    .line 31
    iput-object p2, p0, Lorg/jline/console/CommandMethods;->compileCompleter:Ljava/util/function/Function;

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/util/function/Function;Ljava/util/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lorg/jline/console/CommandInput;",
            "*>;",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/jline/reader/Completer;",
            ">;>;)V"
        }
    .end annotation

    .line 21
    .local p1, "execute":Ljava/util/function/Function;, "Ljava/util/function/Function<Lorg/jline/console/CommandInput;*>;"
    .local p2, "compileCompleter":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Ljava/util/List<Lorg/jline/reader/Completer;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/jline/console/CommandMethods;->execute:Ljava/util/function/Function;

    .line 23
    iput-object p2, p0, Lorg/jline/console/CommandMethods;->compileCompleter:Ljava/util/function/Function;

    .line 24
    return-void
.end method

.method static synthetic lambda$new$0(Ljava/util/function/Consumer;Lorg/jline/console/CommandInput;)Ljava/lang/Object;
    .locals 1
    .param p0, "execute"    # Ljava/util/function/Consumer;
    .param p1, "i"    # Lorg/jline/console/CommandInput;

    .line 28
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 29
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public compileCompleter()Ljava/util/function/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/jline/reader/Completer;",
            ">;>;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lorg/jline/console/CommandMethods;->compileCompleter:Ljava/util/function/Function;

    return-object v0
.end method

.method public execute()Ljava/util/function/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Function<",
            "Lorg/jline/console/CommandInput;",
            "*>;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lorg/jline/console/CommandMethods;->execute:Ljava/util/function/Function;

    return-object v0
.end method
