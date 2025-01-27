.class Lorg/jline/builtins/Tmux$Window;
.super Ljava/lang/Object;
.source "Tmux.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/builtins/Tmux;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Window"
.end annotation


# instance fields
.field private active:Lorg/jline/builtins/Tmux$VirtualConsole;

.field private lastActive:I

.field private layout:Lorg/jline/builtins/Tmux$Layout;

.field private name:Ljava/lang/String;

.field private final paneId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private panes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jline/builtins/Tmux$VirtualConsole;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/jline/builtins/Tmux;

.field private tmux:Lorg/jline/builtins/Tmux;


# direct methods
.method public constructor <init>(Lorg/jline/builtins/Tmux;Lorg/jline/builtins/Tmux;)V
    .locals 13
    .param p2, "tmux"    # Lorg/jline/builtins/Tmux;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    iput-object p1, p0, Lorg/jline/builtins/Tmux$Window;->this$0:Lorg/jline/builtins/Tmux;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/jline/builtins/Tmux$Window;->panes:Ljava/util/List;

    .line 204
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/jline/builtins/Tmux$Window;->paneId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 210
    iput-object p2, p0, Lorg/jline/builtins/Tmux$Window;->tmux:Lorg/jline/builtins/Tmux;

    .line 211
    new-instance v1, Lorg/jline/builtins/Tmux$Layout;

    invoke-direct {v1}, Lorg/jline/builtins/Tmux$Layout;-><init>()V

    iput-object v1, p0, Lorg/jline/builtins/Tmux$Window;->layout:Lorg/jline/builtins/Tmux$Layout;

    .line 212
    invoke-static {p1}, Lorg/jline/builtins/Tmux;->access$000(Lorg/jline/builtins/Tmux;)Lorg/jline/terminal/Size;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v2

    iput v2, v1, Lorg/jline/builtins/Tmux$Layout;->sx:I

    .line 213
    iget-object v1, p0, Lorg/jline/builtins/Tmux$Window;->layout:Lorg/jline/builtins/Tmux$Layout;

    invoke-static {p1}, Lorg/jline/builtins/Tmux;->access$000(Lorg/jline/builtins/Tmux;)Lorg/jline/terminal/Size;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jline/terminal/Size;->getRows()I

    move-result v2

    iput v2, v1, Lorg/jline/builtins/Tmux$Layout;->sy:I

    .line 214
    iget-object v1, p0, Lorg/jline/builtins/Tmux$Window;->layout:Lorg/jline/builtins/Tmux$Layout;

    sget-object v2, Lorg/jline/builtins/Tmux$Layout$Type;->WindowPane:Lorg/jline/builtins/Tmux$Layout$Type;

    iput-object v2, v1, Lorg/jline/builtins/Tmux$Layout;->type:Lorg/jline/builtins/Tmux$Layout$Type;

    .line 215
    new-instance v1, Lorg/jline/builtins/Tmux$VirtualConsole;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v4

    invoke-static {p1}, Lorg/jline/builtins/Tmux;->access$100(Lorg/jline/builtins/Tmux;)Ljava/lang/String;

    move-result-object v5

    .line 216
    invoke-static {p1}, Lorg/jline/builtins/Tmux;->access$000(Lorg/jline/builtins/Tmux;)Lorg/jline/terminal/Size;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v8

    invoke-static {p1}, Lorg/jline/builtins/Tmux;->access$000(Lorg/jline/builtins/Tmux;)Lorg/jline/terminal/Size;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jline/terminal/Size;->getRows()I

    move-result v0

    add-int/lit8 v9, v0, -0x1

    .line 217
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v10, Lorg/jline/builtins/Tmux$Window$$ExternalSyntheticLambda16;

    invoke-direct {v10, p2}, Lorg/jline/builtins/Tmux$Window$$ExternalSyntheticLambda16;-><init>(Lorg/jline/builtins/Tmux;)V

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v11, Lorg/jline/builtins/Tmux$Window$$ExternalSyntheticLambda17;

    invoke-direct {v11, p2}, Lorg/jline/builtins/Tmux$Window$$ExternalSyntheticLambda17;-><init>(Lorg/jline/builtins/Tmux;)V

    iget-object v12, p0, Lorg/jline/builtins/Tmux$Window;->layout:Lorg/jline/builtins/Tmux$Layout;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v12}, Lorg/jline/builtins/Tmux$VirtualConsole;-><init>(ILjava/lang/String;IIIILjava/lang/Runnable;Ljava/util/function/Consumer;Lorg/jline/builtins/Tmux$Layout;)V

    iput-object v1, p0, Lorg/jline/builtins/Tmux$Window;->active:Lorg/jline/builtins/Tmux$VirtualConsole;

    .line 218
    iget v0, p0, Lorg/jline/builtins/Tmux$Window;->lastActive:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/jline/builtins/Tmux$Window;->lastActive:I

    invoke-static {v1, v0}, Lorg/jline/builtins/Tmux$VirtualConsole;->access$202(Lorg/jline/builtins/Tmux$VirtualConsole;I)I

    .line 219
    iget-object v0, p0, Lorg/jline/builtins/Tmux$Window;->active:Lorg/jline/builtins/Tmux$VirtualConsole;

    invoke-virtual {v0}, Lorg/jline/builtins/Tmux$VirtualConsole;->getConsole()Lorg/jline/terminal/impl/LineDisciplineTerminal;

    move-result-object v0

    invoke-static {p1}, Lorg/jline/builtins/Tmux;->access$300(Lorg/jline/builtins/Tmux;)Lorg/jline/terminal/Terminal;

    move-result-object v1

    invoke-interface {v1}, Lorg/jline/terminal/Terminal;->getAttributes()Lorg/jline/terminal/Attributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jline/terminal/impl/LineDisciplineTerminal;->setAttributes(Lorg/jline/terminal/Attributes;)V

    .line 220
    iget-object v0, p0, Lorg/jline/builtins/Tmux$Window;->panes:Ljava/util/List;

    iget-object v1, p0, Lorg/jline/builtins/Tmux$Window;->active:Lorg/jline/builtins/Tmux$VirtualConsole;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "win"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lorg/jline/builtins/Tmux;->access$400(Lorg/jline/builtins/Tmux;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lorg/jline/builtins/Tmux;->access$400(Lorg/jline/builtins/Tmux;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/jline/builtins/Tmux;->access$400(Lorg/jline/builtins/Tmux;)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/builtins/Tmux$Window;->name:Ljava/lang/String;

    .line 222
    invoke-static {p1}, Lorg/jline/builtins/Tmux;->access$400(Lorg/jline/builtins/Tmux;)Ljava/lang/Integer;

    invoke-static {p1}, Lorg/jline/builtins/Tmux;->access$400(Lorg/jline/builtins/Tmux;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/jline/builtins/Tmux;->access$402(Lorg/jline/builtins/Tmux;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 223
    return-void
.end method

.method static synthetic lambda$new$0(Lorg/jline/builtins/Tmux;)V
    .locals 0
    .param p0, "rec$"    # Lorg/jline/builtins/Tmux;

    .line 217
    invoke-static {p0}, Lorg/jline/builtins/Tmux;->access$800(Lorg/jline/builtins/Tmux;)V

    return-void
.end method

.method static synthetic lambda$new$1(Lorg/jline/builtins/Tmux;Lorg/jline/builtins/Tmux$VirtualConsole;)V
    .locals 0
    .param p0, "rec$"    # Lorg/jline/builtins/Tmux;
    .param p1, "x$0"    # Lorg/jline/builtins/Tmux$VirtualConsole;

    .line 217
    invoke-static {p0, p1}, Lorg/jline/builtins/Tmux;->access$700(Lorg/jline/builtins/Tmux;Lorg/jline/builtins/Tmux$VirtualConsole;)V

    return-void
.end method

.method static synthetic lambda$remove$2(Lorg/jline/builtins/Tmux$VirtualConsole;)I
    .locals 1
    .param p0, "p"    # Lorg/jline/builtins/Tmux$VirtualConsole;

    .line 242
    invoke-static {p0}, Lorg/jline/builtins/Tmux$VirtualConsole;->access$200(Lorg/jline/builtins/Tmux$VirtualConsole;)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$selectPane$13(Lorg/jline/builtins/Tmux$VirtualConsole;)I
    .locals 1
    .param p0, "c"    # Lorg/jline/builtins/Tmux$VirtualConsole;

    .line 330
    invoke-static {p0}, Lorg/jline/builtins/Tmux$VirtualConsole;->access$200(Lorg/jline/builtins/Tmux$VirtualConsole;)I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method static synthetic lambda$selectPane$17(Lorg/jline/builtins/Tmux$VirtualConsole;)I
    .locals 1
    .param p0, "c"    # Lorg/jline/builtins/Tmux$VirtualConsole;

    .line 338
    invoke-static {p0}, Lorg/jline/builtins/Tmux$VirtualConsole;->access$200(Lorg/jline/builtins/Tmux$VirtualConsole;)I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method static synthetic lambda$selectPane$21(Lorg/jline/builtins/Tmux$VirtualConsole;)I
    .locals 1
    .param p0, "c"    # Lorg/jline/builtins/Tmux$VirtualConsole;

    .line 346
    invoke-static {p0}, Lorg/jline/builtins/Tmux$VirtualConsole;->access$200(Lorg/jline/builtins/Tmux$VirtualConsole;)I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method static synthetic lambda$selectPane$9(Lorg/jline/builtins/Tmux$VirtualConsole;)I
    .locals 1
    .param p0, "c"    # Lorg/jline/builtins/Tmux$VirtualConsole;

    .line 321
    invoke-static {p0}, Lorg/jline/builtins/Tmux$VirtualConsole;->access$200(Lorg/jline/builtins/Tmux$VirtualConsole;)I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method static synthetic lambda$splitPane$4(Lorg/jline/builtins/Tmux;)V
    .locals 0
    .param p0, "rec$"    # Lorg/jline/builtins/Tmux;

    .line 303
    invoke-static {p0}, Lorg/jline/builtins/Tmux;->access$800(Lorg/jline/builtins/Tmux;)V

    return-void
.end method

.method static synthetic lambda$splitPane$5(Lorg/jline/builtins/Tmux;Lorg/jline/builtins/Tmux$VirtualConsole;)V
    .locals 0
    .param p0, "rec$"    # Lorg/jline/builtins/Tmux;
    .param p1, "x$0"    # Lorg/jline/builtins/Tmux$VirtualConsole;

    .line 303
    invoke-static {p0, p1}, Lorg/jline/builtins/Tmux;->access$700(Lorg/jline/builtins/Tmux;Lorg/jline/builtins/Tmux$VirtualConsole;)V

    return-void
.end method


# virtual methods
.method public getActive()Lorg/jline/builtins/Tmux$VirtualConsole;
    .locals 1

    .line 233
    iget-object v0, p0, Lorg/jline/builtins/Tmux$Window;->active:Lorg/jline/builtins/Tmux$VirtualConsole;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 226
    iget-object v0, p0, Lorg/jline/builtins/Tmux$Window;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPanes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jline/builtins/Tmux$VirtualConsole;",
            ">;"
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lorg/jline/builtins/Tmux$Window;->panes:Ljava/util/List;

    return-object v0
.end method

.method public handleResize()V
    .locals 3

    .line 255
    iget-object v0, p0, Lorg/jline/builtins/Tmux$Window;->layout:Lorg/jline/builtins/Tmux$Layout;

    iget-object v1, p0, Lorg/jline/builtins/Tmux$Window;->this$0:Lorg/jline/builtins/Tmux;

    invoke-static {v1}, Lorg/jline/builtins/Tmux;->access$000(Lorg/jline/builtins/Tmux;)Lorg/jline/terminal/Size;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v1

    iget-object v2, p0, Lorg/jline/builtins/Tmux$Window;->this$0:Lorg/jline/builtins/Tmux;

    invoke-static {v2}, Lorg/jline/builtins/Tmux;->access$000(Lorg/jline/builtins/Tmux;)Lorg/jline/terminal/Size;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jline/terminal/Size;->getRows()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/jline/builtins/Tmux$Layout;->resize(II)V

    .line 256
    iget-object v0, p0, Lorg/jline/builtins/Tmux$Window;->panes:Ljava/util/List;

    new-instance v1, Lorg/jline/builtins/Tmux$Window$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lorg/jline/builtins/Tmux$Window$$ExternalSyntheticLambda14;-><init>(Lorg/jline/builtins/Tmux$Window;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 263
    return-void
.end method

.method synthetic lambda$handleResize$3$org-jline-builtins-Tmux$Window(Lorg/jline/builtins/Tmux$VirtualConsole;)V
    .locals 4
    .param p1, "vc"    # Lorg/jline/builtins/Tmux$VirtualConsole;

    .line 257
    invoke-virtual {p1}, Lorg/jline/builtins/Tmux$VirtualConsole;->width()I

    move-result v0

    invoke-static {p1}, Lorg/jline/builtins/Tmux$VirtualConsole;->access$500(Lorg/jline/builtins/Tmux$VirtualConsole;)Lorg/jline/builtins/Tmux$Layout;

    move-result-object v1

    iget v1, v1, Lorg/jline/builtins/Tmux$Layout;->sx:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/jline/builtins/Tmux$VirtualConsole;->height()I

    move-result v0

    invoke-static {p1}, Lorg/jline/builtins/Tmux$VirtualConsole;->access$500(Lorg/jline/builtins/Tmux$VirtualConsole;)Lorg/jline/builtins/Tmux$Layout;

    move-result-object v1

    iget v1, v1, Lorg/jline/builtins/Tmux$Layout;->sy:I

    if-ne v0, v1, :cond_0

    .line 258
    invoke-virtual {p1}, Lorg/jline/builtins/Tmux$VirtualConsole;->left()I

    move-result v0

    invoke-static {p1}, Lorg/jline/builtins/Tmux$VirtualConsole;->access$500(Lorg/jline/builtins/Tmux$VirtualConsole;)Lorg/jline/builtins/Tmux$Layout;

    move-result-object v1

    iget v1, v1, Lorg/jline/builtins/Tmux$Layout;->xoff:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/jline/builtins/Tmux$VirtualConsole;->top()I

    move-result v0

    invoke-static {p1}, Lorg/jline/builtins/Tmux$VirtualConsole;->access$500(Lorg/jline/builtins/Tmux$VirtualConsole;)Lorg/jline/builtins/Tmux$Layout;

    move-result-object v1

    iget v1, v1, Lorg/jline/builtins/Tmux$Layout;->yoff:I

    if-eq v0, v1, :cond_1

    .line 259
    :cond_0
    invoke-static {p1}, Lorg/jline/builtins/Tmux$VirtualConsole;->access$500(Lorg/jline/builtins/Tmux$VirtualConsole;)Lorg/jline/builtins/Tmux$Layout;

    move-result-object v0

    iget v0, v0, Lorg/jline/builtins/Tmux$Layout;->xoff:I

    invoke-static {p1}, Lorg/jline/builtins/Tmux$VirtualConsole;->access$500(Lorg/jline/builtins/Tmux$VirtualConsole;)Lorg/jline/builtins/Tmux$Layout;

    move-result-object v1

    iget v1, v1, Lorg/jline/builtins/Tmux$Layout;->yoff:I

    invoke-static {p1}, Lorg/jline/builtins/Tmux$VirtualConsole;->access$500(Lorg/jline/builtins/Tmux$VirtualConsole;)Lorg/jline/builtins/Tmux$Layout;

    move-result-object v2

    iget v2, v2, Lorg/jline/builtins/Tmux$Layout;->sx:I

    invoke-static {p1}, Lorg/jline/builtins/Tmux$VirtualConsole;->access$500(Lorg/jline/builtins/Tmux$VirtualConsole;)Lorg/jline/builtins/Tmux$Layout;

    move-result-object v3

    iget v3, v3, Lorg/jline/builtins/Tmux$Layout;->sy:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/jline/builtins/Tmux$VirtualConsole;->resize(IIII)V

    .line 260
    iget-object v0, p0, Lorg/jline/builtins/Tmux$Window;->this$0:Lorg/jline/builtins/Tmux;

    invoke-static {v0}, Lorg/jline/builtins/Tmux;->access$900(Lorg/jline/builtins/Tmux;)Lorg/jline/utils/Display;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jline/utils/Display;->clear()V

    .line 262
    :cond_1
    return-void
.end method

.method synthetic lambda$selectPane$10$org-jline-builtins-Tmux$Window(Lorg/jline/builtins/Tmux$VirtualConsole;)Z
    .locals 2
    .param p1, "c"    # Lorg/jline/builtins/Tmux$VirtualConsole;

    .line 326
    invoke-virtual {p1}, Lorg/jline/builtins/Tmux$VirtualConsole;->bottom()I

    move-result v0

    iget-object v1, p0, Lorg/jline/builtins/Tmux$Window;->active:Lorg/jline/builtins/Tmux$VirtualConsole;

    invoke-virtual {v1}, Lorg/jline/builtins/Tmux$VirtualConsole;->top()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/jline/builtins/Tmux$VirtualConsole;->top()I

    move-result v0

    iget-object v1, p0, Lorg/jline/builtins/Tmux$Window;->active:Lorg/jline/builtins/Tmux$VirtualConsole;

    invoke-virtual {v1}, Lorg/jline/builtins/Tmux$VirtualConsole;->bottom()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic lambda$selectPane$11$org-jline-builtins-Tmux$Window(Lorg/jline/builtins/Tmux$VirtualConsole;)Z
    .locals 1
    .param p1, "c"    # Lorg/jline/builtins/Tmux$VirtualConsole;

    .line 327
    iget-object v0, p0, Lorg/jline/builtins/Tmux$Window;->active:Lorg/jline/builtins/Tmux$VirtualConsole;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic lambda$selectPane$12$org-jline-builtins-Tmux$Window(Lorg/jline/builtins/Tmux$VirtualConsole;)I
    .locals 2
    .param p1, "c"    # Lorg/jline/builtins/Tmux$VirtualConsole;

    .line 329
    invoke-virtual {p1}, Lorg/jline/builtins/Tmux$VirtualConsole;->left()I

    move-result v0

    iget-object v1, p0, Lorg/jline/builtins/Tmux$Window;->active:Lorg/jline/builtins/Tmux$VirtualConsole;

    invoke-virtual {v1}, Lorg/jline/builtins/Tmux$VirtualConsole;->left()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/jline/builtins/Tmux$VirtualConsole;->left()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/jline/builtins/Tmux$VirtualConsole;->left()I

    move-result v0

    iget-object v1, p0, Lorg/jline/builtins/Tmux$Window;->this$0:Lorg/jline/builtins/Tmux;

    invoke-static {v1}, Lorg/jline/builtins/Tmux;->access$000(Lorg/jline/builtins/Tmux;)Lorg/jline/terminal/Size;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v1

    add-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method synthetic lambda$selectPane$14$org-jline-builtins-Tmux$Window(Lorg/jline/builtins/Tmux$VirtualConsole;)Z
    .locals 2
    .param p1, "c"    # Lorg/jline/builtins/Tmux$VirtualConsole;

    .line 334
    invoke-virtual {p1}, Lorg/jline/builtins/Tmux$VirtualConsole;->right()I

    move-result v0

    iget-object v1, p0, Lorg/jline/builtins/Tmux$Window;->active:Lorg/jline/builtins/Tmux$VirtualConsole;

    invoke-virtual {v1}, Lorg/jline/builtins/Tmux$VirtualConsole;->left()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/jline/builtins/Tmux$VirtualConsole;->left()I

    move-result v0

    iget-object v1, p0, Lorg/jline/builtins/Tmux$Window;->active:Lorg/jline/builtins/Tmux$VirtualConsole;

    invoke-virtual {v1}, Lorg/jline/builtins/Tmux$VirtualConsole;->right()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic lambda$selectPane$15$org-jline-builtins-Tmux$Window(Lorg/jline/builtins/Tmux$VirtualConsole;)Z
    .locals 1
    .param p1, "c"    # Lorg/jline/builtins/Tmux$VirtualConsole;

    .line 335
    iget-object v0, p0, Lorg/jline/builtins/Tmux$Window;->active:Lorg/jline/builtins/Tmux$VirtualConsole;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic lambda$selectPane$16$org-jline-builtins-Tmux$Window(Lorg/jline/builtins/Tmux$VirtualConsole;)I
    .locals 2
    .param p1, "c"    # Lorg/jline/builtins/Tmux$VirtualConsole;

    .line 337
    invoke-virtual {p1}, Lorg/jline/builtins/Tmux$VirtualConsole;->top()I

    move-result v0

    iget-object v1, p0, Lorg/jline/builtins/Tmux$Window;->active:Lorg/jline/builtins/Tmux$VirtualConsole;

    invoke-virtual {v1}, Lorg/jline/builtins/Tmux$VirtualConsole;->top()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/jline/builtins/Tmux$VirtualConsole;->top()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/jline/builtins/Tmux$VirtualConsole;->top()I

    move-result v0

    iget-object v1, p0, Lorg/jline/builtins/Tmux$Window;->this$0:Lorg/jline/builtins/Tmux;

    invoke-static {v1}, Lorg/jline/builtins/Tmux;->access$000(Lorg/jline/builtins/Tmux;)Lorg/jline/terminal/Size;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jline/terminal/Size;->getRows()I

    move-result v1

    add-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method synthetic lambda$selectPane$18$org-jline-builtins-Tmux$Window(Lorg/jline/builtins/Tmux$VirtualConsole;)Z
    .locals 2
    .param p1, "c"    # Lorg/jline/builtins/Tmux$VirtualConsole;

    .line 342
    invoke-virtual {p1}, Lorg/jline/builtins/Tmux$VirtualConsole;->right()I

    move-result v0

    iget-object v1, p0, Lorg/jline/builtins/Tmux$Window;->active:Lorg/jline/builtins/Tmux$VirtualConsole;

    invoke-virtual {v1}, Lorg/jline/builtins/Tmux$VirtualConsole;->left()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/jline/builtins/Tmux$VirtualConsole;->left()I

    move-result v0

    iget-object v1, p0, Lorg/jline/builtins/Tmux$Window;->active:Lorg/jline/builtins/Tmux$VirtualConsole;

    invoke-virtual {v1}, Lorg/jline/builtins/Tmux$VirtualConsole;->right()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic lambda$selectPane$19$org-jline-builtins-Tmux$Window(Lorg/jline/builtins/Tmux$VirtualConsole;)Z
    .locals 1
    .param p1, "c"    # Lorg/jline/builtins/Tmux$VirtualConsole;

    .line 343
    iget-object v0, p0, Lorg/jline/builtins/Tmux$Window;->active:Lorg/jline/builtins/Tmux$VirtualConsole;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic lambda$selectPane$20$org-jline-builtins-Tmux$Window(Lorg/jline/builtins/Tmux$VirtualConsole;)I
    .locals 2
    .param p1, "c"    # Lorg/jline/builtins/Tmux$VirtualConsole;

    .line 345
    invoke-virtual {p1}, Lorg/jline/builtins/Tmux$VirtualConsole;->top()I

    move-result v0

    iget-object v1, p0, Lorg/jline/builtins/Tmux$Window;->active:Lorg/jline/builtins/Tmux$VirtualConsole;

    invoke-virtual {v1}, Lorg/jline/builtins/Tmux$VirtualConsole;->top()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/jline/builtins/Tmux$VirtualConsole;->top()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/jline/builtins/Tmux$VirtualConsole;->top()I

    move-result v0

    iget-object v1, p0, Lorg/jline/builtins/Tmux$Window;->this$0:Lorg/jline/builtins/Tmux;

    invoke-static {v1}, Lorg/jline/builtins/Tmux;->access$000(Lorg/jline/builtins/Tmux;)Lorg/jline/terminal/Size;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jline/terminal/Size;->getRows()I

    move-result v1

    add-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method synthetic lambda$selectPane$6$org-jline-builtins-Tmux$Window(Lorg/jline/builtins/Tmux$VirtualConsole;)Z
    .locals 2
    .param p1, "c"    # Lorg/jline/builtins/Tmux$VirtualConsole;

    .line 317
    invoke-virtual {p1}, Lorg/jline/builtins/Tmux$VirtualConsole;->bottom()I

    move-result v0

    iget-object v1, p0, Lorg/jline/builtins/Tmux$Window;->active:Lorg/jline/builtins/Tmux$VirtualConsole;

    invoke-virtual {v1}, Lorg/jline/builtins/Tmux$VirtualConsole;->top()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/jline/builtins/Tmux$VirtualConsole;->top()I

    move-result v0

    iget-object v1, p0, Lorg/jline/builtins/Tmux$Window;->active:Lorg/jline/builtins/Tmux$VirtualConsole;

    invoke-virtual {v1}, Lorg/jline/builtins/Tmux$VirtualConsole;->bottom()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic lambda$selectPane$7$org-jline-builtins-Tmux$Window(Lorg/jline/builtins/Tmux$VirtualConsole;)Z
    .locals 1
    .param p1, "c"    # Lorg/jline/builtins/Tmux$VirtualConsole;

    .line 318
    iget-object v0, p0, Lorg/jline/builtins/Tmux$Window;->active:Lorg/jline/builtins/Tmux$VirtualConsole;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic lambda$selectPane$8$org-jline-builtins-Tmux$Window(Lorg/jline/builtins/Tmux$VirtualConsole;)I
    .locals 2
    .param p1, "c"    # Lorg/jline/builtins/Tmux$VirtualConsole;

    .line 320
    invoke-virtual {p1}, Lorg/jline/builtins/Tmux$VirtualConsole;->left()I

    move-result v0

    iget-object v1, p0, Lorg/jline/builtins/Tmux$Window;->active:Lorg/jline/builtins/Tmux$VirtualConsole;

    invoke-virtual {v1}, Lorg/jline/builtins/Tmux$VirtualConsole;->left()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/jline/builtins/Tmux$VirtualConsole;->left()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/jline/builtins/Tmux$VirtualConsole;->left()I

    move-result v0

    iget-object v1, p0, Lorg/jline/builtins/Tmux$Window;->this$0:Lorg/jline/builtins/Tmux;

    invoke-static {v1}, Lorg/jline/builtins/Tmux;->access$000(Lorg/jline/builtins/Tmux;)Lorg/jline/terminal/Size;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v1

    add-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method public remove(Lorg/jline/builtins/Tmux$VirtualConsole;)V
    .locals 3
    .param p1, "console"    # Lorg/jline/builtins/Tmux$VirtualConsole;

    .line 237
    iget-object v0, p0, Lorg/jline/builtins/Tmux$Window;->panes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 238
    iget-object v0, p0, Lorg/jline/builtins/Tmux$Window;->panes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 239
    invoke-static {p1}, Lorg/jline/builtins/Tmux$VirtualConsole;->access$500(Lorg/jline/builtins/Tmux$VirtualConsole;)Lorg/jline/builtins/Tmux$Layout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jline/builtins/Tmux$Layout;->remove()V

    .line 240
    iget-object v0, p0, Lorg/jline/builtins/Tmux$Window;->active:Lorg/jline/builtins/Tmux$VirtualConsole;

    if-ne v0, p1, :cond_0

    .line 241
    iget-object v0, p0, Lorg/jline/builtins/Tmux$Window;->panes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/jline/builtins/Tmux$Window$$ExternalSyntheticLambda15;

    invoke-direct {v1}, Lorg/jline/builtins/Tmux$Window$$ExternalSyntheticLambda15;-><init>()V

    .line 242
    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 243
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jline/builtins/Tmux$VirtualConsole;

    iput-object v0, p0, Lorg/jline/builtins/Tmux$Window;->active:Lorg/jline/builtins/Tmux$VirtualConsole;

    .line 245
    :cond_0
    iget-object v0, p0, Lorg/jline/builtins/Tmux$Window;->active:Lorg/jline/builtins/Tmux$VirtualConsole;

    invoke-static {v0}, Lorg/jline/builtins/Tmux$VirtualConsole;->access$500(Lorg/jline/builtins/Tmux$VirtualConsole;)Lorg/jline/builtins/Tmux$Layout;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/builtins/Tmux$Window;->layout:Lorg/jline/builtins/Tmux$Layout;

    .line 246
    :goto_0
    iget-object v0, p0, Lorg/jline/builtins/Tmux$Window;->layout:Lorg/jline/builtins/Tmux$Layout;

    iget-object v0, v0, Lorg/jline/builtins/Tmux$Layout;->parent:Lorg/jline/builtins/Tmux$Layout;

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lorg/jline/builtins/Tmux$Window;->layout:Lorg/jline/builtins/Tmux$Layout;

    iget-object v0, v0, Lorg/jline/builtins/Tmux$Layout;->parent:Lorg/jline/builtins/Tmux$Layout;

    iput-object v0, p0, Lorg/jline/builtins/Tmux$Window;->layout:Lorg/jline/builtins/Tmux$Layout;

    goto :goto_0

    .line 249
    :cond_1
    iget-object v0, p0, Lorg/jline/builtins/Tmux$Window;->layout:Lorg/jline/builtins/Tmux$Layout;

    invoke-virtual {v0}, Lorg/jline/builtins/Tmux$Layout;->fixOffsets()V

    .line 250
    iget-object v0, p0, Lorg/jline/builtins/Tmux$Window;->layout:Lorg/jline/builtins/Tmux$Layout;

    iget-object v1, p0, Lorg/jline/builtins/Tmux$Window;->this$0:Lorg/jline/builtins/Tmux;

    invoke-static {v1}, Lorg/jline/builtins/Tmux;->access$000(Lorg/jline/builtins/Tmux;)Lorg/jline/terminal/Size;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v1

    iget-object v2, p0, Lorg/jline/builtins/Tmux$Window;->this$0:Lorg/jline/builtins/Tmux;

    invoke-static {v2}, Lorg/jline/builtins/Tmux;->access$000(Lorg/jline/builtins/Tmux;)Lorg/jline/terminal/Size;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jline/terminal/Size;->getRows()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/builtins/Tmux$Layout;->fixPanes(II)V

    .line 252
    :cond_2
    return-void
.end method

.method public resizePane(Lorg/jline/builtins/Options;I)V
    .locals 4
    .param p1, "opt"    # Lorg/jline/builtins/Options;
    .param p2, "adjust"    # I

    .line 358
    const-string v0, "width"

    invoke-virtual {p1, v0}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 359
    invoke-virtual {p1, v0}, Lorg/jline/builtins/Options;->getNumber(Ljava/lang/String;)I

    move-result v0

    .line 360
    .local v0, "x":I
    iget-object v1, p0, Lorg/jline/builtins/Tmux$Window;->active:Lorg/jline/builtins/Tmux$VirtualConsole;

    invoke-virtual {v1}, Lorg/jline/builtins/Tmux$VirtualConsole;->layout()Lorg/jline/builtins/Tmux$Layout;

    move-result-object v1

    sget-object v2, Lorg/jline/builtins/Tmux$Layout$Type;->LeftRight:Lorg/jline/builtins/Tmux$Layout$Type;

    invoke-virtual {v1, v2, v0}, Lorg/jline/builtins/Tmux$Layout;->resizeTo(Lorg/jline/builtins/Tmux$Layout$Type;I)V

    .line 362
    .end local v0    # "x":I
    :cond_0
    const-string v0, "height"

    invoke-virtual {p1, v0}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 363
    invoke-virtual {p1, v0}, Lorg/jline/builtins/Options;->getNumber(Ljava/lang/String;)I

    move-result v0

    .line 364
    .local v0, "y":I
    iget-object v1, p0, Lorg/jline/builtins/Tmux$Window;->active:Lorg/jline/builtins/Tmux$VirtualConsole;

    invoke-virtual {v1}, Lorg/jline/builtins/Tmux$VirtualConsole;->layout()Lorg/jline/builtins/Tmux$Layout;

    move-result-object v1

    sget-object v2, Lorg/jline/builtins/Tmux$Layout$Type;->TopBottom:Lorg/jline/builtins/Tmux$Layout$Type;

    invoke-virtual {v1, v2, v0}, Lorg/jline/builtins/Tmux$Layout;->resizeTo(Lorg/jline/builtins/Tmux$Layout$Type;I)V

    .line 366
    .end local v0    # "y":I
    :cond_1
    const-string v0, "L"

    invoke-virtual {p1, v0}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 367
    iget-object v0, p0, Lorg/jline/builtins/Tmux$Window;->active:Lorg/jline/builtins/Tmux$VirtualConsole;

    invoke-virtual {v0}, Lorg/jline/builtins/Tmux$VirtualConsole;->layout()Lorg/jline/builtins/Tmux$Layout;

    move-result-object v0

    sget-object v2, Lorg/jline/builtins/Tmux$Layout$Type;->LeftRight:Lorg/jline/builtins/Tmux$Layout$Type;

    neg-int v3, p2

    invoke-virtual {v0, v2, v3, v1}, Lorg/jline/builtins/Tmux$Layout;->resize(Lorg/jline/builtins/Tmux$Layout$Type;IZ)V

    goto :goto_0

    .line 368
    :cond_2
    const-string v0, "R"

    invoke-virtual {p1, v0}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 369
    iget-object v0, p0, Lorg/jline/builtins/Tmux$Window;->active:Lorg/jline/builtins/Tmux$VirtualConsole;

    invoke-virtual {v0}, Lorg/jline/builtins/Tmux$VirtualConsole;->layout()Lorg/jline/builtins/Tmux$Layout;

    move-result-object v0

    sget-object v2, Lorg/jline/builtins/Tmux$Layout$Type;->LeftRight:Lorg/jline/builtins/Tmux$Layout$Type;

    invoke-virtual {v0, v2, p2, v1}, Lorg/jline/builtins/Tmux$Layout;->resize(Lorg/jline/builtins/Tmux$Layout$Type;IZ)V

    goto :goto_0

    .line 370
    :cond_3
    const-string v0, "U"

    invoke-virtual {p1, v0}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 371
    iget-object v0, p0, Lorg/jline/builtins/Tmux$Window;->active:Lorg/jline/builtins/Tmux$VirtualConsole;

    invoke-virtual {v0}, Lorg/jline/builtins/Tmux$VirtualConsole;->layout()Lorg/jline/builtins/Tmux$Layout;

    move-result-object v0

    sget-object v2, Lorg/jline/builtins/Tmux$Layout$Type;->TopBottom:Lorg/jline/builtins/Tmux$Layout$Type;

    neg-int v3, p2

    invoke-virtual {v0, v2, v3, v1}, Lorg/jline/builtins/Tmux$Layout;->resize(Lorg/jline/builtins/Tmux$Layout$Type;IZ)V

    goto :goto_0

    .line 372
    :cond_4
    const-string v0, "D"

    invoke-virtual {p1, v0}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 373
    iget-object v0, p0, Lorg/jline/builtins/Tmux$Window;->active:Lorg/jline/builtins/Tmux$VirtualConsole;

    invoke-virtual {v0}, Lorg/jline/builtins/Tmux$VirtualConsole;->layout()Lorg/jline/builtins/Tmux$Layout;

    move-result-object v0

    sget-object v2, Lorg/jline/builtins/Tmux$Layout$Type;->TopBottom:Lorg/jline/builtins/Tmux$Layout$Type;

    invoke-virtual {v0, v2, p2, v1}, Lorg/jline/builtins/Tmux$Layout;->resize(Lorg/jline/builtins/Tmux$Layout$Type;IZ)V

    .line 375
    :cond_5
    :goto_0
    return-void
.end method

.method public selectPane(Lorg/jline/builtins/Options;)Z
    .locals 5
    .param p1, "opt"    # Lorg/jline/builtins/Options;

    .line 314
    iget-object v0, p0, Lorg/jline/builtins/Tmux$Window;->active:Lorg/jline/builtins/Tmux$VirtualConsole;

    .line 315
    .local v0, "prevActive":Lorg/jline/builtins/Tmux$VirtualConsole;
    const-string v1, "L"

    invoke-virtual {p1, v1}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 316
    iget-object v1, p0, Lorg/jline/builtins/Tmux$Window;->panes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/jline/builtins/Tmux$Window$$ExternalSyntheticLambda18;

    invoke-direct {v2, p0}, Lorg/jline/builtins/Tmux$Window$$ExternalSyntheticLambda18;-><init>(Lorg/jline/builtins/Tmux$Window;)V

    .line 317
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/jline/builtins/Tmux$Window$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lorg/jline/builtins/Tmux$Window$$ExternalSyntheticLambda4;-><init>(Lorg/jline/builtins/Tmux$Window;)V

    .line 318
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/jline/builtins/Tmux$Window$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lorg/jline/builtins/Tmux$Window$$ExternalSyntheticLambda5;-><init>(Lorg/jline/builtins/Tmux$Window;)V

    .line 320
    invoke-static {v2}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v2

    new-instance v3, Lorg/jline/builtins/Tmux$Window$$ExternalSyntheticLambda6;

    invoke-direct {v3}, Lorg/jline/builtins/Tmux$Window$$ExternalSyntheticLambda6;-><init>()V

    .line 321
    invoke-interface {v2, v3}, Ljava/util/Comparator;->thenComparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v2

    .line 319
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 322
    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    iget-object v2, p0, Lorg/jline/builtins/Tmux$Window;->active:Lorg/jline/builtins/Tmux$VirtualConsole;

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jline/builtins/Tmux$VirtualConsole;

    iput-object v1, p0, Lorg/jline/builtins/Tmux$Window;->active:Lorg/jline/builtins/Tmux$VirtualConsole;

    goto/16 :goto_0

    .line 324
    :cond_0
    const-string v1, "R"

    invoke-virtual {p1, v1}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 325
    iget-object v1, p0, Lorg/jline/builtins/Tmux$Window;->panes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/jline/builtins/Tmux$Window$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lorg/jline/builtins/Tmux$Window$$ExternalSyntheticLambda7;-><init>(Lorg/jline/builtins/Tmux$Window;)V

    .line 326
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/jline/builtins/Tmux$Window$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lorg/jline/builtins/Tmux$Window$$ExternalSyntheticLambda8;-><init>(Lorg/jline/builtins/Tmux$Window;)V

    .line 327
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/jline/builtins/Tmux$Window$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0}, Lorg/jline/builtins/Tmux$Window$$ExternalSyntheticLambda9;-><init>(Lorg/jline/builtins/Tmux$Window;)V

    .line 329
    invoke-static {v2}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v2

    new-instance v3, Lorg/jline/builtins/Tmux$Window$$ExternalSyntheticLambda10;

    invoke-direct {v3}, Lorg/jline/builtins/Tmux$Window$$ExternalSyntheticLambda10;-><init>()V

    .line 330
    invoke-interface {v2, v3}, Ljava/util/Comparator;->thenComparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v2

    .line 328
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 331
    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    iget-object v2, p0, Lorg/jline/builtins/Tmux$Window;->active:Lorg/jline/builtins/Tmux$VirtualConsole;

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jline/builtins/Tmux$VirtualConsole;

    iput-object v1, p0, Lorg/jline/builtins/Tmux$Window;->active:Lorg/jline/builtins/Tmux$VirtualConsole;

    goto/16 :goto_0

    .line 332
    :cond_1
    const-string v1, "U"

    invoke-virtual {p1, v1}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 333
    iget-object v1, p0, Lorg/jline/builtins/Tmux$Window;->panes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/jline/builtins/Tmux$Window$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0}, Lorg/jline/builtins/Tmux$Window$$ExternalSyntheticLambda12;-><init>(Lorg/jline/builtins/Tmux$Window;)V

    .line 334
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/jline/builtins/Tmux$Window$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0}, Lorg/jline/builtins/Tmux$Window$$ExternalSyntheticLambda13;-><init>(Lorg/jline/builtins/Tmux$Window;)V

    .line 335
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/jline/builtins/Tmux$Window$$ExternalSyntheticLambda19;

    invoke-direct {v2, p0}, Lorg/jline/builtins/Tmux$Window$$ExternalSyntheticLambda19;-><init>(Lorg/jline/builtins/Tmux$Window;)V

    .line 337
    invoke-static {v2}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v2

    new-instance v3, Lorg/jline/builtins/Tmux$Window$$ExternalSyntheticLambda20;

    invoke-direct {v3}, Lorg/jline/builtins/Tmux$Window$$ExternalSyntheticLambda20;-><init>()V

    .line 338
    invoke-interface {v2, v3}, Ljava/util/Comparator;->thenComparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v2

    .line 336
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 339
    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    iget-object v2, p0, Lorg/jline/builtins/Tmux$Window;->active:Lorg/jline/builtins/Tmux$VirtualConsole;

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jline/builtins/Tmux$VirtualConsole;

    iput-object v1, p0, Lorg/jline/builtins/Tmux$Window;->active:Lorg/jline/builtins/Tmux$VirtualConsole;

    goto :goto_0

    .line 340
    :cond_2
    const-string v1, "D"

    invoke-virtual {p1, v1}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 341
    iget-object v1, p0, Lorg/jline/builtins/Tmux$Window;->panes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/jline/builtins/Tmux$Window$$ExternalSyntheticLambda21;

    invoke-direct {v2, p0}, Lorg/jline/builtins/Tmux$Window$$ExternalSyntheticLambda21;-><init>(Lorg/jline/builtins/Tmux$Window;)V

    .line 342
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/jline/builtins/Tmux$Window$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/jline/builtins/Tmux$Window$$ExternalSyntheticLambda1;-><init>(Lorg/jline/builtins/Tmux$Window;)V

    .line 343
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/jline/builtins/Tmux$Window$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lorg/jline/builtins/Tmux$Window$$ExternalSyntheticLambda2;-><init>(Lorg/jline/builtins/Tmux$Window;)V

    .line 345
    invoke-static {v2}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v2

    new-instance v3, Lorg/jline/builtins/Tmux$Window$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Lorg/jline/builtins/Tmux$Window$$ExternalSyntheticLambda3;-><init>()V

    .line 346
    invoke-interface {v2, v3}, Ljava/util/Comparator;->thenComparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v2

    .line 344
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 347
    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    iget-object v2, p0, Lorg/jline/builtins/Tmux$Window;->active:Lorg/jline/builtins/Tmux$VirtualConsole;

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jline/builtins/Tmux$VirtualConsole;

    iput-object v1, p0, Lorg/jline/builtins/Tmux$Window;->active:Lorg/jline/builtins/Tmux$VirtualConsole;

    .line 349
    :cond_3
    :goto_0
    const/4 v1, 0x0

    .line 350
    .local v1, "out":Z
    iget-object v2, p0, Lorg/jline/builtins/Tmux$Window;->active:Lorg/jline/builtins/Tmux$VirtualConsole;

    if-eq v0, v2, :cond_4

    .line 351
    iget v3, p0, Lorg/jline/builtins/Tmux$Window;->lastActive:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/jline/builtins/Tmux$Window;->lastActive:I

    invoke-static {v2, v3}, Lorg/jline/builtins/Tmux$VirtualConsole;->access$202(Lorg/jline/builtins/Tmux$VirtualConsole;I)I

    .line 352
    const/4 v1, 0x1

    .line 354
    :cond_4
    return v1
.end method

.method public splitPane(Lorg/jline/builtins/Options;)Lorg/jline/builtins/Tmux$VirtualConsole;
    .locals 17
    .param p1, "opt"    # Lorg/jline/builtins/Options;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 266
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "horizontal"

    invoke-virtual {v1, v2}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lorg/jline/builtins/Tmux$Layout$Type;->LeftRight:Lorg/jline/builtins/Tmux$Layout$Type;

    goto :goto_0

    :cond_0
    sget-object v2, Lorg/jline/builtins/Tmux$Layout$Type;->TopBottom:Lorg/jline/builtins/Tmux$Layout$Type;

    .line 268
    .local v2, "type":Lorg/jline/builtins/Tmux$Layout$Type;
    :goto_0
    iget-object v3, v0, Lorg/jline/builtins/Tmux$Window;->layout:Lorg/jline/builtins/Tmux$Layout;

    iget-object v3, v3, Lorg/jline/builtins/Tmux$Layout;->type:Lorg/jline/builtins/Tmux$Layout$Type;

    sget-object v4, Lorg/jline/builtins/Tmux$Layout$Type;->WindowPane:Lorg/jline/builtins/Tmux$Layout$Type;

    if-ne v3, v4, :cond_1

    .line 269
    new-instance v3, Lorg/jline/builtins/Tmux$Layout;

    invoke-direct {v3}, Lorg/jline/builtins/Tmux$Layout;-><init>()V

    .line 270
    .local v3, "p":Lorg/jline/builtins/Tmux$Layout;
    iget-object v4, v0, Lorg/jline/builtins/Tmux$Window;->layout:Lorg/jline/builtins/Tmux$Layout;

    iget v4, v4, Lorg/jline/builtins/Tmux$Layout;->sx:I

    iput v4, v3, Lorg/jline/builtins/Tmux$Layout;->sx:I

    .line 271
    iget-object v4, v0, Lorg/jline/builtins/Tmux$Window;->layout:Lorg/jline/builtins/Tmux$Layout;

    iget v4, v4, Lorg/jline/builtins/Tmux$Layout;->sy:I

    iput v4, v3, Lorg/jline/builtins/Tmux$Layout;->sy:I

    .line 272
    iput-object v2, v3, Lorg/jline/builtins/Tmux$Layout;->type:Lorg/jline/builtins/Tmux$Layout$Type;

    .line 273
    iget-object v4, v3, Lorg/jline/builtins/Tmux$Layout;->cells:Ljava/util/List;

    iget-object v5, v0, Lorg/jline/builtins/Tmux$Window;->layout:Lorg/jline/builtins/Tmux$Layout;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    iget-object v4, v0, Lorg/jline/builtins/Tmux$Window;->layout:Lorg/jline/builtins/Tmux$Layout;

    iput-object v3, v4, Lorg/jline/builtins/Tmux$Layout;->parent:Lorg/jline/builtins/Tmux$Layout;

    .line 275
    iput-object v3, v0, Lorg/jline/builtins/Tmux$Window;->layout:Lorg/jline/builtins/Tmux$Layout;

    .line 277
    .end local v3    # "p":Lorg/jline/builtins/Tmux$Layout;
    :cond_1
    iget-object v3, v0, Lorg/jline/builtins/Tmux$Window;->active:Lorg/jline/builtins/Tmux$VirtualConsole;

    invoke-virtual {v3}, Lorg/jline/builtins/Tmux$VirtualConsole;->layout()Lorg/jline/builtins/Tmux$Layout;

    move-result-object v3

    .line 278
    .local v3, "cell":Lorg/jline/builtins/Tmux$Layout;
    const-string v4, "f"

    invoke-virtual {v1, v4}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 279
    :goto_1
    iget-object v4, v3, Lorg/jline/builtins/Tmux$Layout;->parent:Lorg/jline/builtins/Tmux$Layout;

    iget-object v5, v0, Lorg/jline/builtins/Tmux$Window;->layout:Lorg/jline/builtins/Tmux$Layout;

    if-eq v4, v5, :cond_2

    .line 280
    iget-object v3, v3, Lorg/jline/builtins/Tmux$Layout;->parent:Lorg/jline/builtins/Tmux$Layout;

    goto :goto_1

    .line 283
    :cond_2
    const/4 v4, -0x1

    .line 284
    .local v4, "size":I
    const-string v5, "size"

    invoke-virtual {v1, v5}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 285
    invoke-virtual {v1, v5}, Lorg/jline/builtins/Options;->getNumber(Ljava/lang/String;)I

    move-result v4

    goto :goto_2

    .line 286
    :cond_3
    const-string v5, "perc"

    invoke-virtual {v1, v5}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 287
    invoke-virtual {v1, v5}, Lorg/jline/builtins/Options;->getNumber(Ljava/lang/String;)I

    move-result v5

    .line 288
    .local v5, "p":I
    sget-object v6, Lorg/jline/builtins/Tmux$Layout$Type;->TopBottom:Lorg/jline/builtins/Tmux$Layout$Type;

    if-ne v2, v6, :cond_4

    .line 289
    iget v6, v3, Lorg/jline/builtins/Tmux$Layout;->sy:I

    mul-int/2addr v6, v5

    div-int/lit8 v4, v6, 0x64

    goto :goto_2

    .line 291
    :cond_4
    iget v6, v3, Lorg/jline/builtins/Tmux$Layout;->sx:I

    mul-int/2addr v6, v5

    div-int/lit8 v4, v6, 0x64

    .line 295
    .end local v5    # "p":I
    :cond_5
    :goto_2
    const-string v5, "before"

    invoke-virtual {v1, v5}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v3, v2, v4, v5}, Lorg/jline/builtins/Tmux$Layout;->split(Lorg/jline/builtins/Tmux$Layout$Type;IZ)Lorg/jline/builtins/Tmux$Layout;

    move-result-object v5

    .line 296
    .local v5, "newCell":Lorg/jline/builtins/Tmux$Layout;
    if-nez v5, :cond_6

    .line 297
    iget-object v6, v0, Lorg/jline/builtins/Tmux$Window;->this$0:Lorg/jline/builtins/Tmux;

    invoke-static {v6}, Lorg/jline/builtins/Tmux;->access$600(Lorg/jline/builtins/Tmux;)Ljava/io/PrintStream;

    move-result-object v6

    const-string v7, "create pane failed: pane too small"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 298
    const/4 v6, 0x0

    return-object v6

    .line 301
    :cond_6
    new-instance v16, Lorg/jline/builtins/Tmux$VirtualConsole;

    iget-object v6, v0, Lorg/jline/builtins/Tmux$Window;->paneId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v7

    iget-object v6, v0, Lorg/jline/builtins/Tmux$Window;->this$0:Lorg/jline/builtins/Tmux;

    invoke-static {v6}, Lorg/jline/builtins/Tmux;->access$100(Lorg/jline/builtins/Tmux;)Ljava/lang/String;

    move-result-object v8

    iget v9, v5, Lorg/jline/builtins/Tmux$Layout;->xoff:I

    iget v10, v5, Lorg/jline/builtins/Tmux$Layout;->yoff:I

    iget v11, v5, Lorg/jline/builtins/Tmux$Layout;->sx:I

    iget v12, v5, Lorg/jline/builtins/Tmux$Layout;->sy:I

    iget-object v6, v0, Lorg/jline/builtins/Tmux$Window;->tmux:Lorg/jline/builtins/Tmux;

    .line 303
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v13, Lorg/jline/builtins/Tmux$Window$$ExternalSyntheticLambda0;

    invoke-direct {v13, v6}, Lorg/jline/builtins/Tmux$Window$$ExternalSyntheticLambda0;-><init>(Lorg/jline/builtins/Tmux;)V

    iget-object v6, v0, Lorg/jline/builtins/Tmux$Window;->tmux:Lorg/jline/builtins/Tmux;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v14, Lorg/jline/builtins/Tmux$Window$$ExternalSyntheticLambda11;

    invoke-direct {v14, v6}, Lorg/jline/builtins/Tmux$Window$$ExternalSyntheticLambda11;-><init>(Lorg/jline/builtins/Tmux;)V

    move-object/from16 v6, v16

    move-object v15, v5

    invoke-direct/range {v6 .. v15}, Lorg/jline/builtins/Tmux$VirtualConsole;-><init>(ILjava/lang/String;IIIILjava/lang/Runnable;Ljava/util/function/Consumer;Lorg/jline/builtins/Tmux$Layout;)V

    .line 304
    .local v6, "newConsole":Lorg/jline/builtins/Tmux$VirtualConsole;
    iget-object v7, v0, Lorg/jline/builtins/Tmux$Window;->panes:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    invoke-virtual {v6}, Lorg/jline/builtins/Tmux$VirtualConsole;->getConsole()Lorg/jline/terminal/impl/LineDisciplineTerminal;

    move-result-object v7

    iget-object v8, v0, Lorg/jline/builtins/Tmux$Window;->this$0:Lorg/jline/builtins/Tmux;

    invoke-static {v8}, Lorg/jline/builtins/Tmux;->access$300(Lorg/jline/builtins/Tmux;)Lorg/jline/terminal/Terminal;

    move-result-object v8

    invoke-interface {v8}, Lorg/jline/terminal/Terminal;->getAttributes()Lorg/jline/terminal/Attributes;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/jline/terminal/impl/LineDisciplineTerminal;->setAttributes(Lorg/jline/terminal/Attributes;)V

    .line 306
    const-string v7, "d"

    invoke-virtual {v1, v7}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 307
    iput-object v6, v0, Lorg/jline/builtins/Tmux$Window;->active:Lorg/jline/builtins/Tmux$VirtualConsole;

    .line 308
    iget v7, v0, Lorg/jline/builtins/Tmux$Window;->lastActive:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v0, Lorg/jline/builtins/Tmux$Window;->lastActive:I

    invoke-static {v6, v7}, Lorg/jline/builtins/Tmux$VirtualConsole;->access$202(Lorg/jline/builtins/Tmux$VirtualConsole;I)I

    .line 310
    :cond_7
    return-object v6
.end method
