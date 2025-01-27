.class Lorg/jline/builtins/NfaMatcher$Frag;
.super Ljava/lang/Object;
.source "NfaMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/builtins/NfaMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Frag"
.end annotation


# instance fields
.field final out:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/function/Consumer<",
            "Lorg/jline/builtins/NfaMatcher$State;",
            ">;>;"
        }
    .end annotation
.end field

.field final start:Lorg/jline/builtins/NfaMatcher$State;


# direct methods
.method public constructor <init>(Lorg/jline/builtins/NfaMatcher$State;Ljava/util/Collection;)V
    .locals 1
    .param p1, "start"    # Lorg/jline/builtins/NfaMatcher$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jline/builtins/NfaMatcher$State;",
            "Ljava/util/Collection<",
            "Ljava/util/function/Consumer<",
            "Lorg/jline/builtins/NfaMatcher$State;",
            ">;>;)V"
        }
    .end annotation

    .line 256
    .local p2, "l":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/function/Consumer<Lorg/jline/builtins/NfaMatcher$State;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jline/builtins/NfaMatcher$Frag;->out:Ljava/util/List;

    .line 257
    iput-object p1, p0, Lorg/jline/builtins/NfaMatcher$Frag;->start:Lorg/jline/builtins/NfaMatcher$State;

    .line 258
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 259
    return-void
.end method

.method public constructor <init>(Lorg/jline/builtins/NfaMatcher$State;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 1
    .param p1, "start"    # Lorg/jline/builtins/NfaMatcher$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jline/builtins/NfaMatcher$State;",
            "Ljava/util/Collection<",
            "Ljava/util/function/Consumer<",
            "Lorg/jline/builtins/NfaMatcher$State;",
            ">;>;",
            "Ljava/util/Collection<",
            "Ljava/util/function/Consumer<",
            "Lorg/jline/builtins/NfaMatcher$State;",
            ">;>;)V"
        }
    .end annotation

    .line 260
    .local p2, "l1":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/function/Consumer<Lorg/jline/builtins/NfaMatcher$State;>;>;"
    .local p3, "l2":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/function/Consumer<Lorg/jline/builtins/NfaMatcher$State;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jline/builtins/NfaMatcher$Frag;->out:Ljava/util/List;

    .line 261
    iput-object p1, p0, Lorg/jline/builtins/NfaMatcher$Frag;->start:Lorg/jline/builtins/NfaMatcher$State;

    .line 262
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 263
    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 264
    return-void
.end method

.method public constructor <init>(Lorg/jline/builtins/NfaMatcher$State;Ljava/util/Collection;Ljava/util/function/Consumer;)V
    .locals 1
    .param p1, "start"    # Lorg/jline/builtins/NfaMatcher$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jline/builtins/NfaMatcher$State;",
            "Ljava/util/Collection<",
            "Ljava/util/function/Consumer<",
            "Lorg/jline/builtins/NfaMatcher$State;",
            ">;>;",
            "Ljava/util/function/Consumer<",
            "Lorg/jline/builtins/NfaMatcher$State;",
            ">;)V"
        }
    .end annotation

    .line 269
    .local p2, "l":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/function/Consumer<Lorg/jline/builtins/NfaMatcher$State;>;>;"
    .local p3, "c":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lorg/jline/builtins/NfaMatcher$State;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jline/builtins/NfaMatcher$Frag;->out:Ljava/util/List;

    .line 270
    iput-object p1, p0, Lorg/jline/builtins/NfaMatcher$Frag;->start:Lorg/jline/builtins/NfaMatcher$State;

    .line 271
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 272
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    return-void
.end method

.method public constructor <init>(Lorg/jline/builtins/NfaMatcher$State;Ljava/util/function/Consumer;)V
    .locals 1
    .param p1, "start"    # Lorg/jline/builtins/NfaMatcher$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jline/builtins/NfaMatcher$State;",
            "Ljava/util/function/Consumer<",
            "Lorg/jline/builtins/NfaMatcher$State;",
            ">;)V"
        }
    .end annotation

    .line 265
    .local p2, "c":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lorg/jline/builtins/NfaMatcher$State;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jline/builtins/NfaMatcher$Frag;->out:Ljava/util/List;

    .line 266
    iput-object p1, p0, Lorg/jline/builtins/NfaMatcher$Frag;->start:Lorg/jline/builtins/NfaMatcher$State;

    .line 267
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    return-void
.end method

.method static synthetic lambda$patch$0(Lorg/jline/builtins/NfaMatcher$State;Ljava/util/function/Consumer;)V
    .locals 0
    .param p0, "s"    # Lorg/jline/builtins/NfaMatcher$State;
    .param p1, "c"    # Ljava/util/function/Consumer;

    .line 275
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public patch(Lorg/jline/builtins/NfaMatcher$State;)V
    .locals 2
    .param p1, "s"    # Lorg/jline/builtins/NfaMatcher$State;

    .line 275
    iget-object v0, p0, Lorg/jline/builtins/NfaMatcher$Frag;->out:Ljava/util/List;

    new-instance v1, Lorg/jline/builtins/NfaMatcher$Frag$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lorg/jline/builtins/NfaMatcher$Frag$$ExternalSyntheticLambda0;-><init>(Lorg/jline/builtins/NfaMatcher$State;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 276
    return-void
.end method
