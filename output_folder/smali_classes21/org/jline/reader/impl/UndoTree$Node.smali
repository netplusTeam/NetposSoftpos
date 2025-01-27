.class Lorg/jline/reader/impl/UndoTree$Node;
.super Ljava/lang/Object;
.source "UndoTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/reader/impl/UndoTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Node"
.end annotation


# instance fields
.field private left:Lorg/jline/reader/impl/UndoTree$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jline/reader/impl/UndoTree<",
            "TT;>.Node;"
        }
    .end annotation
.end field

.field private right:Lorg/jline/reader/impl/UndoTree$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jline/reader/impl/UndoTree<",
            "TT;>.Node;"
        }
    .end annotation
.end field

.field private final state:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/jline/reader/impl/UndoTree;


# direct methods
.method public constructor <init>(Lorg/jline/reader/impl/UndoTree;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 70
    .local p0, "this":Lorg/jline/reader/impl/UndoTree$Node;, "Lorg/jline/reader/impl/UndoTree<TT;>.Node;"
    .local p2, "s":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lorg/jline/reader/impl/UndoTree$Node;->this$0:Lorg/jline/reader/impl/UndoTree;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/jline/reader/impl/UndoTree$Node;->left:Lorg/jline/reader/impl/UndoTree$Node;

    .line 68
    iput-object p1, p0, Lorg/jline/reader/impl/UndoTree$Node;->right:Lorg/jline/reader/impl/UndoTree$Node;

    .line 71
    iput-object p2, p0, Lorg/jline/reader/impl/UndoTree$Node;->state:Ljava/lang/Object;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lorg/jline/reader/impl/UndoTree$Node;)Lorg/jline/reader/impl/UndoTree$Node;
    .locals 1
    .param p0, "x0"    # Lorg/jline/reader/impl/UndoTree$Node;

    .line 65
    iget-object v0, p0, Lorg/jline/reader/impl/UndoTree$Node;->left:Lorg/jline/reader/impl/UndoTree$Node;

    return-object v0
.end method

.method static synthetic access$002(Lorg/jline/reader/impl/UndoTree$Node;Lorg/jline/reader/impl/UndoTree$Node;)Lorg/jline/reader/impl/UndoTree$Node;
    .locals 0
    .param p0, "x0"    # Lorg/jline/reader/impl/UndoTree$Node;
    .param p1, "x1"    # Lorg/jline/reader/impl/UndoTree$Node;

    .line 65
    iput-object p1, p0, Lorg/jline/reader/impl/UndoTree$Node;->left:Lorg/jline/reader/impl/UndoTree$Node;

    return-object p1
.end method

.method static synthetic access$100(Lorg/jline/reader/impl/UndoTree$Node;)Lorg/jline/reader/impl/UndoTree$Node;
    .locals 1
    .param p0, "x0"    # Lorg/jline/reader/impl/UndoTree$Node;

    .line 65
    iget-object v0, p0, Lorg/jline/reader/impl/UndoTree$Node;->right:Lorg/jline/reader/impl/UndoTree$Node;

    return-object v0
.end method

.method static synthetic access$102(Lorg/jline/reader/impl/UndoTree$Node;Lorg/jline/reader/impl/UndoTree$Node;)Lorg/jline/reader/impl/UndoTree$Node;
    .locals 0
    .param p0, "x0"    # Lorg/jline/reader/impl/UndoTree$Node;
    .param p1, "x1"    # Lorg/jline/reader/impl/UndoTree$Node;

    .line 65
    iput-object p1, p0, Lorg/jline/reader/impl/UndoTree$Node;->right:Lorg/jline/reader/impl/UndoTree$Node;

    return-object p1
.end method

.method static synthetic access$200(Lorg/jline/reader/impl/UndoTree$Node;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/jline/reader/impl/UndoTree$Node;

    .line 65
    iget-object v0, p0, Lorg/jline/reader/impl/UndoTree$Node;->state:Ljava/lang/Object;

    return-object v0
.end method
