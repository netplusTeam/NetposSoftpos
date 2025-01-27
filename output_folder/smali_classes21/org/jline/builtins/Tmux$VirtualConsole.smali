.class Lorg/jline/builtins/Tmux$VirtualConsole;
.super Ljava/lang/Object;
.source "Tmux.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/builtins/Tmux;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VirtualConsole"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jline/builtins/Tmux$VirtualConsole$MasterOutputStream;
    }
.end annotation


# instance fields
.field private active:I

.field private clock:Z

.field private final closer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lorg/jline/builtins/Tmux$VirtualConsole;",
            ">;"
        }
    .end annotation
.end field

.field private final console:Lorg/jline/terminal/impl/LineDisciplineTerminal;

.field private final id:I

.field private final layout:Lorg/jline/builtins/Tmux$Layout;

.field private left:I

.field private final masterInputOutput:Ljava/io/OutputStream;

.field private final masterOutput:Ljava/io/OutputStream;

.field private final terminal:Lorg/jline/builtins/ScreenTerminal;

.field private top:I


# direct methods
.method public constructor <init>(ILjava/lang/String;IIIILjava/lang/Runnable;Ljava/util/function/Consumer;Lorg/jline/builtins/Tmux$Layout;)V
    .locals 17
    .param p1, "id"    # I
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "columns"    # I
    .param p6, "rows"    # I
    .param p7, "dirty"    # Ljava/lang/Runnable;
    .param p9, "layout"    # Lorg/jline/builtins/Tmux$Layout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "IIII",
            "Ljava/lang/Runnable;",
            "Ljava/util/function/Consumer<",
            "Lorg/jline/builtins/Tmux$VirtualConsole;",
            ">;",
            "Lorg/jline/builtins/Tmux$Layout;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1842
    .local p8, "closer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lorg/jline/builtins/Tmux$VirtualConsole;>;"
    move-object/from16 v7, p0

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1843
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "tmux%02d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 1844
    .local v10, "name":Ljava/lang/String;
    move/from16 v11, p1

    iput v11, v7, Lorg/jline/builtins/Tmux$VirtualConsole;->id:I

    .line 1845
    move/from16 v12, p3

    iput v12, v7, Lorg/jline/builtins/Tmux$VirtualConsole;->left:I

    .line 1846
    move/from16 v13, p4

    iput v13, v7, Lorg/jline/builtins/Tmux$VirtualConsole;->top:I

    .line 1847
    move-object/from16 v14, p8

    iput-object v14, v7, Lorg/jline/builtins/Tmux$VirtualConsole;->closer:Ljava/util/function/Consumer;

    .line 1848
    new-instance v0, Lorg/jline/builtins/Tmux$VirtualConsole$1;

    move-object/from16 v15, p7

    invoke-direct {v0, v7, v8, v9, v15}, Lorg/jline/builtins/Tmux$VirtualConsole$1;-><init>(Lorg/jline/builtins/Tmux$VirtualConsole;IILjava/lang/Runnable;)V

    iput-object v0, v7, Lorg/jline/builtins/Tmux$VirtualConsole;->terminal:Lorg/jline/builtins/ScreenTerminal;

    .line 1855
    new-instance v4, Lorg/jline/builtins/Tmux$VirtualConsole$MasterOutputStream;

    const/4 v0, 0x0

    invoke-direct {v4, v7, v0}, Lorg/jline/builtins/Tmux$VirtualConsole$MasterOutputStream;-><init>(Lorg/jline/builtins/Tmux$VirtualConsole;Lorg/jline/builtins/Tmux$1;)V

    iput-object v4, v7, Lorg/jline/builtins/Tmux$VirtualConsole;->masterOutput:Ljava/io/OutputStream;

    .line 1856
    new-instance v0, Lorg/jline/builtins/Tmux$VirtualConsole$2;

    invoke-direct {v0, v7}, Lorg/jline/builtins/Tmux$VirtualConsole$2;-><init>(Lorg/jline/builtins/Tmux$VirtualConsole;)V

    iput-object v0, v7, Lorg/jline/builtins/Tmux$VirtualConsole;->masterInputOutput:Ljava/io/OutputStream;

    .line 1862
    new-instance v6, Lorg/jline/builtins/Tmux$VirtualConsole$3;

    const/4 v5, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    move-object v2, v10

    move-object/from16 v3, p2

    move-object/from16 v16, v10

    move-object v10, v6

    .end local v10    # "name":Ljava/lang/String;
    .local v16, "name":Ljava/lang/String;
    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lorg/jline/builtins/Tmux$VirtualConsole$3;-><init>(Lorg/jline/builtins/Tmux$VirtualConsole;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;Ljava/util/function/Consumer;)V

    iput-object v10, v7, Lorg/jline/builtins/Tmux$VirtualConsole;->console:Lorg/jline/terminal/impl/LineDisciplineTerminal;

    .line 1873
    new-instance v0, Lorg/jline/terminal/Size;

    invoke-direct {v0, v8, v9}, Lorg/jline/terminal/Size;-><init>(II)V

    invoke-virtual {v10, v0}, Lorg/jline/terminal/impl/LineDisciplineTerminal;->setSize(Lorg/jline/terminal/Size;)V

    .line 1874
    move-object/from16 v0, p9

    iput-object v0, v7, Lorg/jline/builtins/Tmux$VirtualConsole;->layout:Lorg/jline/builtins/Tmux$Layout;

    .line 1875
    return-void
.end method

.method static synthetic access$1000(Lorg/jline/builtins/Tmux$VirtualConsole;)Z
    .locals 1
    .param p0, "x0"    # Lorg/jline/builtins/Tmux$VirtualConsole;

    .line 1829
    iget-boolean v0, p0, Lorg/jline/builtins/Tmux$VirtualConsole;->clock:Z

    return v0
.end method

.method static synthetic access$1002(Lorg/jline/builtins/Tmux$VirtualConsole;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/jline/builtins/Tmux$VirtualConsole;
    .param p1, "x1"    # Z

    .line 1829
    iput-boolean p1, p0, Lorg/jline/builtins/Tmux$VirtualConsole;->clock:Z

    return p1
.end method

.method static synthetic access$1100(Lorg/jline/builtins/Tmux$VirtualConsole;)I
    .locals 1
    .param p0, "x0"    # Lorg/jline/builtins/Tmux$VirtualConsole;

    .line 1829
    iget v0, p0, Lorg/jline/builtins/Tmux$VirtualConsole;->id:I

    return v0
.end method

.method static synthetic access$1200(Lorg/jline/builtins/Tmux$VirtualConsole;)I
    .locals 1
    .param p0, "x0"    # Lorg/jline/builtins/Tmux$VirtualConsole;

    .line 1829
    iget v0, p0, Lorg/jline/builtins/Tmux$VirtualConsole;->top:I

    return v0
.end method

.method static synthetic access$1500(Lorg/jline/builtins/Tmux$VirtualConsole;)Lorg/jline/terminal/impl/LineDisciplineTerminal;
    .locals 1
    .param p0, "x0"    # Lorg/jline/builtins/Tmux$VirtualConsole;

    .line 1829
    iget-object v0, p0, Lorg/jline/builtins/Tmux$VirtualConsole;->console:Lorg/jline/terminal/impl/LineDisciplineTerminal;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/jline/builtins/Tmux$VirtualConsole;)Lorg/jline/builtins/ScreenTerminal;
    .locals 1
    .param p0, "x0"    # Lorg/jline/builtins/Tmux$VirtualConsole;

    .line 1829
    iget-object v0, p0, Lorg/jline/builtins/Tmux$VirtualConsole;->terminal:Lorg/jline/builtins/ScreenTerminal;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/jline/builtins/Tmux$VirtualConsole;)Ljava/io/OutputStream;
    .locals 1
    .param p0, "x0"    # Lorg/jline/builtins/Tmux$VirtualConsole;

    .line 1829
    iget-object v0, p0, Lorg/jline/builtins/Tmux$VirtualConsole;->masterInputOutput:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic access$200(Lorg/jline/builtins/Tmux$VirtualConsole;)I
    .locals 1
    .param p0, "x0"    # Lorg/jline/builtins/Tmux$VirtualConsole;

    .line 1829
    iget v0, p0, Lorg/jline/builtins/Tmux$VirtualConsole;->active:I

    return v0
.end method

.method static synthetic access$202(Lorg/jline/builtins/Tmux$VirtualConsole;I)I
    .locals 0
    .param p0, "x0"    # Lorg/jline/builtins/Tmux$VirtualConsole;
    .param p1, "x1"    # I

    .line 1829
    iput p1, p0, Lorg/jline/builtins/Tmux$VirtualConsole;->active:I

    return p1
.end method

.method static synthetic access$500(Lorg/jline/builtins/Tmux$VirtualConsole;)Lorg/jline/builtins/Tmux$Layout;
    .locals 1
    .param p0, "x0"    # Lorg/jline/builtins/Tmux$VirtualConsole;

    .line 1829
    iget-object v0, p0, Lorg/jline/builtins/Tmux$VirtualConsole;->layout:Lorg/jline/builtins/Tmux$Layout;

    return-object v0
.end method


# virtual methods
.method public bottom()I
    .locals 2

    .line 1894
    invoke-virtual {p0}, Lorg/jline/builtins/Tmux$VirtualConsole;->top()I

    move-result v0

    invoke-virtual {p0}, Lorg/jline/builtins/Tmux$VirtualConsole;->height()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1927
    iget-object v0, p0, Lorg/jline/builtins/Tmux$VirtualConsole;->console:Lorg/jline/terminal/impl/LineDisciplineTerminal;

    invoke-virtual {v0}, Lorg/jline/terminal/impl/LineDisciplineTerminal;->close()V

    .line 1928
    return-void
.end method

.method public dump([JIIII[I)V
    .locals 7
    .param p1, "fullscreen"    # [J
    .param p2, "ftop"    # I
    .param p3, "fleft"    # I
    .param p4, "fheight"    # I
    .param p5, "fwidth"    # I
    .param p6, "cursor"    # [I

    .line 1922
    iget-object v0, p0, Lorg/jline/builtins/Tmux$VirtualConsole;->terminal:Lorg/jline/builtins/ScreenTerminal;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/jline/builtins/ScreenTerminal;->dump([JIIII[I)V

    .line 1923
    return-void
.end method

.method public getConsole()Lorg/jline/terminal/impl/LineDisciplineTerminal;
    .locals 1

    .line 1906
    iget-object v0, p0, Lorg/jline/builtins/Tmux$VirtualConsole;->console:Lorg/jline/terminal/impl/LineDisciplineTerminal;

    return-object v0
.end method

.method public getMasterInputOutput()Ljava/io/OutputStream;
    .locals 1

    .line 1910
    iget-object v0, p0, Lorg/jline/builtins/Tmux$VirtualConsole;->masterInputOutput:Ljava/io/OutputStream;

    return-object v0
.end method

.method public height()I
    .locals 1

    .line 1902
    iget-object v0, p0, Lorg/jline/builtins/Tmux$VirtualConsole;->console:Lorg/jline/terminal/impl/LineDisciplineTerminal;

    invoke-virtual {v0}, Lorg/jline/terminal/impl/LineDisciplineTerminal;->getHeight()I

    move-result v0

    return v0
.end method

.method layout()Lorg/jline/builtins/Tmux$Layout;
    .locals 1

    .line 1878
    iget-object v0, p0, Lorg/jline/builtins/Tmux$VirtualConsole;->layout:Lorg/jline/builtins/Tmux$Layout;

    return-object v0
.end method

.method public left()I
    .locals 1

    .line 1882
    iget v0, p0, Lorg/jline/builtins/Tmux$VirtualConsole;->left:I

    return v0
.end method

.method public resize(IIII)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 1914
    iput p1, p0, Lorg/jline/builtins/Tmux$VirtualConsole;->left:I

    .line 1915
    iput p2, p0, Lorg/jline/builtins/Tmux$VirtualConsole;->top:I

    .line 1916
    iget-object v0, p0, Lorg/jline/builtins/Tmux$VirtualConsole;->console:Lorg/jline/terminal/impl/LineDisciplineTerminal;

    new-instance v1, Lorg/jline/terminal/Size;

    invoke-direct {v1, p3, p4}, Lorg/jline/terminal/Size;-><init>(II)V

    invoke-virtual {v0, v1}, Lorg/jline/terminal/impl/LineDisciplineTerminal;->setSize(Lorg/jline/terminal/Size;)V

    .line 1917
    iget-object v0, p0, Lorg/jline/builtins/Tmux$VirtualConsole;->terminal:Lorg/jline/builtins/ScreenTerminal;

    invoke-virtual {v0, p3, p4}, Lorg/jline/builtins/ScreenTerminal;->setSize(II)Z

    .line 1918
    iget-object v0, p0, Lorg/jline/builtins/Tmux$VirtualConsole;->console:Lorg/jline/terminal/impl/LineDisciplineTerminal;

    sget-object v1, Lorg/jline/terminal/Terminal$Signal;->WINCH:Lorg/jline/terminal/Terminal$Signal;

    invoke-virtual {v0, v1}, Lorg/jline/terminal/impl/LineDisciplineTerminal;->raise(Lorg/jline/terminal/Terminal$Signal;)V

    .line 1919
    return-void
.end method

.method public right()I
    .locals 2

    .line 1890
    invoke-virtual {p0}, Lorg/jline/builtins/Tmux$VirtualConsole;->left()I

    move-result v0

    invoke-virtual {p0}, Lorg/jline/builtins/Tmux$VirtualConsole;->width()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public top()I
    .locals 1

    .line 1886
    iget v0, p0, Lorg/jline/builtins/Tmux$VirtualConsole;->top:I

    return v0
.end method

.method public width()I
    .locals 1

    .line 1898
    iget-object v0, p0, Lorg/jline/builtins/Tmux$VirtualConsole;->console:Lorg/jline/terminal/impl/LineDisciplineTerminal;

    invoke-virtual {v0}, Lorg/jline/terminal/impl/LineDisciplineTerminal;->getWidth()I

    move-result v0

    return v0
.end method
