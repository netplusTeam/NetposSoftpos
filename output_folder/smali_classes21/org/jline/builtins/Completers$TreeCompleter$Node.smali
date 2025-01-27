.class public Lorg/jline/builtins/Completers$TreeCompleter$Node;
.super Ljava/lang/Object;
.source "Completers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/builtins/Completers$TreeCompleter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Node"
.end annotation


# instance fields
.field final completer:Lorg/jline/reader/Completer;

.field final nodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jline/builtins/Completers$TreeCompleter$Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/jline/reader/Completer;Ljava/util/List;)V
    .locals 0
    .param p1, "completer"    # Lorg/jline/reader/Completer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jline/reader/Completer;",
            "Ljava/util/List<",
            "Lorg/jline/builtins/Completers$TreeCompleter$Node;",
            ">;)V"
        }
    .end annotation

    .line 498
    .local p2, "nodes":Ljava/util/List;, "Ljava/util/List<Lorg/jline/builtins/Completers$TreeCompleter$Node;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 499
    iput-object p1, p0, Lorg/jline/builtins/Completers$TreeCompleter$Node;->completer:Lorg/jline/reader/Completer;

    .line 500
    iput-object p2, p0, Lorg/jline/builtins/Completers$TreeCompleter$Node;->nodes:Ljava/util/List;

    .line 501
    return-void
.end method
