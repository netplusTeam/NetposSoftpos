.class Lorg/jline/builtins/Tmux$Layout;
.super Ljava/lang/Object;
.source "Tmux.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/builtins/Tmux;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Layout"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jline/builtins/Tmux$Layout$Type;
    }
.end annotation


# static fields
.field private static final PANE_MINIMUM:I = 0x3

.field static final PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field cells:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jline/builtins/Tmux$Layout;",
            ">;"
        }
    .end annotation
.end field

.field parent:Lorg/jline/builtins/Tmux$Layout;

.field sx:I

.field sy:I

.field type:Lorg/jline/builtins/Tmux$Layout$Type;

.field xoff:I

.field yoff:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1307
    const-string v0, "([0-9]+)x([0-9]+),([0-9]+),([0-9]+)([^0-9]\\S*)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jline/builtins/Tmux$Layout;->PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1318
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/jline/builtins/Tmux$Layout;->cells:Ljava/util/List;

    return-void
.end method

.method private static checksum(Ljava/lang/CharSequence;)I
    .locals 1
    .param p0, "layout"    # Ljava/lang/CharSequence;

    .line 1733
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/jline/builtins/Tmux$Layout;->checksum(Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method private static checksum(Ljava/lang/CharSequence;I)I
    .locals 4
    .param p0, "layout"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I

    .line 1737
    const/4 v0, 0x0

    .line 1738
    .local v0, "csum":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1739
    shr-int/lit8 v2, v0, 0x1

    and-int/lit8 v3, v0, 0x1

    shl-int/lit8 v3, v3, 0xf

    add-int/2addr v2, v3

    .line 1740
    .end local v0    # "csum":I
    .local v2, "csum":I
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    add-int/2addr v0, v2

    .line 1738
    .end local v2    # "csum":I
    .restart local v0    # "csum":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1742
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method private doDump(Ljava/lang/StringBuilder;)V
    .locals 4
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 1352
    iget v0, p0, Lorg/jline/builtins/Tmux$Layout;->sx:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/jline/builtins/Tmux$Layout;->sy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lorg/jline/builtins/Tmux$Layout;->xoff:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lorg/jline/builtins/Tmux$Layout;->yoff:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1353
    sget-object v0, Lorg/jline/builtins/Tmux$1;->$SwitchMap$org$jline$builtins$Tmux$Layout$Type:[I

    iget-object v2, p0, Lorg/jline/builtins/Tmux$Layout;->type:Lorg/jline/builtins/Tmux$Layout$Type;

    invoke-virtual {v2}, Lorg/jline/builtins/Tmux$Layout$Type;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    goto :goto_4

    .line 1359
    :pswitch_0
    iget-object v0, p0, Lorg/jline/builtins/Tmux$Layout;->type:Lorg/jline/builtins/Tmux$Layout$Type;

    sget-object v2, Lorg/jline/builtins/Tmux$Layout$Type;->TopBottom:Lorg/jline/builtins/Tmux$Layout$Type;

    if-ne v0, v2, :cond_0

    const/16 v0, 0x5b

    goto :goto_0

    :cond_0
    const/16 v0, 0x7b

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1360
    const/4 v0, 0x1

    .line 1361
    .local v0, "first":Z
    iget-object v2, p0, Lorg/jline/builtins/Tmux$Layout;->cells:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jline/builtins/Tmux$Layout;

    .line 1362
    .local v3, "c":Lorg/jline/builtins/Tmux$Layout;
    if-eqz v0, :cond_1

    .line 1363
    const/4 v0, 0x0

    goto :goto_2

    .line 1365
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1367
    :goto_2
    invoke-direct {v3, p1}, Lorg/jline/builtins/Tmux$Layout;->doDump(Ljava/lang/StringBuilder;)V

    .line 1368
    .end local v3    # "c":Lorg/jline/builtins/Tmux$Layout;
    goto :goto_1

    .line 1369
    :cond_2
    iget-object v1, p0, Lorg/jline/builtins/Tmux$Layout;->type:Lorg/jline/builtins/Tmux$Layout$Type;

    sget-object v2, Lorg/jline/builtins/Tmux$Layout$Type;->TopBottom:Lorg/jline/builtins/Tmux$Layout$Type;

    if-ne v1, v2, :cond_3

    const/16 v1, 0x5d

    goto :goto_3

    :cond_3
    const/16 v1, 0x7d

    :goto_3
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1355
    .end local v0    # "first":Z
    :pswitch_1
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1356
    nop

    .line 1372
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic lambda$resizeCheck$0(Lorg/jline/builtins/Tmux$Layout$Type;Lorg/jline/builtins/Tmux$Layout;)I
    .locals 1
    .param p0, "type"    # Lorg/jline/builtins/Tmux$Layout$Type;
    .param p1, "c"    # Lorg/jline/builtins/Tmux$Layout;

    .line 1585
    if-eqz p1, :cond_0

    invoke-direct {p1, p0}, Lorg/jline/builtins/Tmux$Layout;->resizeCheck(Lorg/jline/builtins/Tmux$Layout$Type;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$resizeCheck$1(Lorg/jline/builtins/Tmux$Layout$Type;Lorg/jline/builtins/Tmux$Layout;)I
    .locals 1
    .param p0, "type"    # Lorg/jline/builtins/Tmux$Layout$Type;
    .param p1, "c"    # Lorg/jline/builtins/Tmux$Layout;

    .line 1589
    if-eqz p1, :cond_0

    invoke-direct {p1, p0}, Lorg/jline/builtins/Tmux$Layout;->resizeCheck(Lorg/jline/builtins/Tmux$Layout$Type;)I

    move-result v0

    goto :goto_0

    :cond_0
    const v0, 0x7fffffff

    :goto_0
    return v0
.end method

.method public static parse(Ljava/lang/String;)Lorg/jline/builtins/Tmux$Layout;
    .locals 4
    .param p0, "layout"    # Ljava/lang/String;

    .line 1321
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "Bad syntax"

    const/4 v2, 0x6

    if-lt v0, v2, :cond_2

    .line 1324
    const/4 v0, 0x0

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1325
    .local v0, "chk":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_1

    .line 1328
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 1329
    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {p0}, Lorg/jline/builtins/Tmux$Layout;->checksum(Ljava/lang/CharSequence;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1332
    const/4 v1, 0x0

    invoke-static {v1, p0}, Lorg/jline/builtins/Tmux$Layout;->parseCell(Lorg/jline/builtins/Tmux$Layout;Ljava/lang/String;)Lorg/jline/builtins/Tmux$Layout;

    move-result-object v1

    return-object v1

    .line 1330
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Bad checksum"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1326
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1322
    .end local v0    # "chk":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseCell(Lorg/jline/builtins/Tmux$Layout;Ljava/lang/String;)Lorg/jline/builtins/Tmux$Layout;
    .locals 7
    .param p0, "parent"    # Lorg/jline/builtins/Tmux$Layout;
    .param p1, "layout"    # Ljava/lang/String;

    .line 1746
    sget-object v0, Lorg/jline/builtins/Tmux$Layout;->PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1747
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1748
    new-instance v1, Lorg/jline/builtins/Tmux$Layout;

    invoke-direct {v1}, Lorg/jline/builtins/Tmux$Layout;-><init>()V

    .line 1749
    .local v1, "cell":Lorg/jline/builtins/Tmux$Layout;
    sget-object v2, Lorg/jline/builtins/Tmux$Layout$Type;->WindowPane:Lorg/jline/builtins/Tmux$Layout$Type;

    iput-object v2, v1, Lorg/jline/builtins/Tmux$Layout;->type:Lorg/jline/builtins/Tmux$Layout$Type;

    .line 1750
    iput-object p0, v1, Lorg/jline/builtins/Tmux$Layout;->parent:Lorg/jline/builtins/Tmux$Layout;

    .line 1751
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lorg/jline/builtins/Tmux$Layout;->sx:I

    .line 1752
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lorg/jline/builtins/Tmux$Layout;->sy:I

    .line 1753
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lorg/jline/builtins/Tmux$Layout;->xoff:I

    .line 1754
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lorg/jline/builtins/Tmux$Layout;->yoff:I

    .line 1755
    if-eqz p0, :cond_0

    .line 1756
    iget-object v3, p0, Lorg/jline/builtins/Tmux$Layout;->cells:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1758
    :cond_0
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    .line 1759
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_1

    .line 1762
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2c

    if-ne v4, v5, :cond_4

    .line 1763
    const/4 v4, 0x1

    .line 1764
    .local v4, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1765
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1767
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v4, v6, :cond_3

    .line 1768
    return-object v1

    .line 1770
    :cond_3
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_4

    .line 1771
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1775
    .end local v4    # "i":I
    :cond_4
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 1798
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1777
    :sswitch_0
    sget-object v4, Lorg/jline/builtins/Tmux$Layout$Type;->LeftRight:Lorg/jline/builtins/Tmux$Layout$Type;

    iput-object v4, v1, Lorg/jline/builtins/Tmux$Layout;->type:Lorg/jline/builtins/Tmux$Layout$Type;

    .line 1778
    const/16 v4, 0x7b

    const/16 v6, 0x7d

    invoke-static {p1, v4, v6}, Lorg/jline/builtins/Tmux;->access$1300(Ljava/lang/String;CC)I

    move-result v4

    .line 1779
    .restart local v4    # "i":I
    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lorg/jline/builtins/Tmux$Layout;->parseCell(Lorg/jline/builtins/Tmux$Layout;Ljava/lang/String;)Lorg/jline/builtins/Tmux$Layout;

    .line 1780
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1781
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_5

    .line 1782
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lorg/jline/builtins/Tmux$Layout;->parseCell(Lorg/jline/builtins/Tmux$Layout;Ljava/lang/String;)Lorg/jline/builtins/Tmux$Layout;

    .line 1784
    :cond_5
    return-object v1

    .line 1786
    .end local v4    # "i":I
    :sswitch_1
    sget-object v4, Lorg/jline/builtins/Tmux$Layout$Type;->TopBottom:Lorg/jline/builtins/Tmux$Layout$Type;

    iput-object v4, v1, Lorg/jline/builtins/Tmux$Layout;->type:Lorg/jline/builtins/Tmux$Layout$Type;

    .line 1787
    const/16 v4, 0x5b

    const/16 v6, 0x5d

    invoke-static {p1, v4, v6}, Lorg/jline/builtins/Tmux;->access$1300(Ljava/lang/String;CC)I

    move-result v4

    .line 1788
    .restart local v4    # "i":I
    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lorg/jline/builtins/Tmux$Layout;->parseCell(Lorg/jline/builtins/Tmux$Layout;Ljava/lang/String;)Lorg/jline/builtins/Tmux$Layout;

    .line 1789
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1790
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_6

    .line 1791
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lorg/jline/builtins/Tmux$Layout;->parseCell(Lorg/jline/builtins/Tmux$Layout;Ljava/lang/String;)Lorg/jline/builtins/Tmux$Layout;

    .line 1793
    :cond_6
    return-object v1

    .line 1795
    .end local v4    # "i":I
    :sswitch_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lorg/jline/builtins/Tmux$Layout;->parseCell(Lorg/jline/builtins/Tmux$Layout;Ljava/lang/String;)Lorg/jline/builtins/Tmux$Layout;

    .line 1796
    return-object v1

    .line 1760
    :cond_7
    :goto_1
    return-object v1

    .line 1801
    .end local v1    # "cell":Lorg/jline/builtins/Tmux$Layout;
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Bad syntax"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_data_0
    .sparse-switch
        0x2c -> :sswitch_2
        0x5b -> :sswitch_1
        0x7b -> :sswitch_0
    .end sparse-switch
.end method

.method private resizeAdjust(Lorg/jline/builtins/Tmux$Layout$Type;I)V
    .locals 3
    .param p1, "type"    # Lorg/jline/builtins/Tmux$Layout$Type;
    .param p2, "change"    # I

    .line 1596
    sget-object v0, Lorg/jline/builtins/Tmux$Layout$Type;->LeftRight:Lorg/jline/builtins/Tmux$Layout$Type;

    if-ne p1, v0, :cond_0

    .line 1597
    iget v0, p0, Lorg/jline/builtins/Tmux$Layout;->sx:I

    add-int/2addr v0, p2

    iput v0, p0, Lorg/jline/builtins/Tmux$Layout;->sx:I

    goto :goto_0

    .line 1599
    :cond_0
    iget v0, p0, Lorg/jline/builtins/Tmux$Layout;->sy:I

    add-int/2addr v0, p2

    iput v0, p0, Lorg/jline/builtins/Tmux$Layout;->sy:I

    .line 1601
    :goto_0
    iget-object v0, p0, Lorg/jline/builtins/Tmux$Layout;->type:Lorg/jline/builtins/Tmux$Layout$Type;

    sget-object v1, Lorg/jline/builtins/Tmux$Layout$Type;->WindowPane:Lorg/jline/builtins/Tmux$Layout$Type;

    if-ne v0, v1, :cond_1

    .line 1602
    return-void

    .line 1604
    :cond_1
    iget-object v0, p0, Lorg/jline/builtins/Tmux$Layout;->type:Lorg/jline/builtins/Tmux$Layout$Type;

    if-eq v0, p1, :cond_3

    .line 1605
    iget-object v0, p0, Lorg/jline/builtins/Tmux$Layout;->cells:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jline/builtins/Tmux$Layout;

    .line 1606
    .local v1, "c":Lorg/jline/builtins/Tmux$Layout;
    invoke-direct {v1, p1, p2}, Lorg/jline/builtins/Tmux$Layout;->resizeAdjust(Lorg/jline/builtins/Tmux$Layout$Type;I)V

    .line 1607
    .end local v1    # "c":Lorg/jline/builtins/Tmux$Layout;
    goto :goto_1

    .line 1608
    :cond_2
    return-void

    .line 1610
    :cond_3
    :goto_2
    if-eqz p2, :cond_8

    .line 1611
    iget-object v0, p0, Lorg/jline/builtins/Tmux$Layout;->cells:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jline/builtins/Tmux$Layout;

    .line 1612
    .restart local v1    # "c":Lorg/jline/builtins/Tmux$Layout;
    if-nez p2, :cond_4

    .line 1613
    goto :goto_4

    .line 1615
    :cond_4
    if-lez p2, :cond_5

    .line 1616
    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lorg/jline/builtins/Tmux$Layout;->resizeAdjust(Lorg/jline/builtins/Tmux$Layout$Type;I)V

    .line 1617
    add-int/lit8 p2, p2, -0x1

    .line 1618
    goto :goto_3

    .line 1620
    :cond_5
    invoke-direct {v1, p1}, Lorg/jline/builtins/Tmux$Layout;->resizeCheck(Lorg/jline/builtins/Tmux$Layout$Type;)I

    move-result v2

    if-lez v2, :cond_6

    .line 1621
    const/4 v2, -0x1

    invoke-direct {v1, p1, v2}, Lorg/jline/builtins/Tmux$Layout;->resizeAdjust(Lorg/jline/builtins/Tmux$Layout$Type;I)V

    .line 1622
    add-int/lit8 p2, p2, 0x1

    .line 1624
    .end local v1    # "c":Lorg/jline/builtins/Tmux$Layout;
    :cond_6
    goto :goto_3

    :cond_7
    :goto_4
    goto :goto_2

    .line 1626
    :cond_8
    return-void
.end method

.method private resizeCheck(Lorg/jline/builtins/Tmux$Layout$Type;)I
    .locals 2
    .param p1, "type"    # Lorg/jline/builtins/Tmux$Layout$Type;

    .line 1568
    iget-object v0, p0, Lorg/jline/builtins/Tmux$Layout;->type:Lorg/jline/builtins/Tmux$Layout$Type;

    sget-object v1, Lorg/jline/builtins/Tmux$Layout$Type;->WindowPane:Lorg/jline/builtins/Tmux$Layout$Type;

    if-ne v0, v1, :cond_2

    .line 1569
    const/4 v0, 0x3

    .line 1571
    .local v0, "min":I
    sget-object v1, Lorg/jline/builtins/Tmux$Layout$Type;->LeftRight:Lorg/jline/builtins/Tmux$Layout$Type;

    if-ne p1, v1, :cond_0

    .line 1572
    iget v1, p0, Lorg/jline/builtins/Tmux$Layout;->sx:I

    .local v1, "avail":I
    goto :goto_0

    .line 1574
    .end local v1    # "avail":I
    :cond_0
    iget v1, p0, Lorg/jline/builtins/Tmux$Layout;->sy:I

    .line 1575
    .restart local v1    # "avail":I
    add-int/lit8 v0, v0, 0x1

    .line 1577
    :goto_0
    if-le v1, v0, :cond_1

    .line 1578
    sub-int/2addr v1, v0

    goto :goto_1

    .line 1580
    :cond_1
    const/4 v1, 0x0

    .line 1582
    :goto_1
    return v1

    .line 1583
    .end local v0    # "min":I
    .end local v1    # "avail":I
    :cond_2
    iget-object v0, p0, Lorg/jline/builtins/Tmux$Layout;->type:Lorg/jline/builtins/Tmux$Layout$Type;

    if-ne v0, p1, :cond_3

    .line 1584
    iget-object v0, p0, Lorg/jline/builtins/Tmux$Layout;->cells:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/jline/builtins/Tmux$Layout$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lorg/jline/builtins/Tmux$Layout$$ExternalSyntheticLambda0;-><init>(Lorg/jline/builtins/Tmux$Layout$Type;)V

    .line 1585
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 1586
    invoke-interface {v0}, Ljava/util/stream/IntStream;->sum()I

    move-result v0

    .line 1584
    return v0

    .line 1588
    :cond_3
    iget-object v0, p0, Lorg/jline/builtins/Tmux$Layout;->cells:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/jline/builtins/Tmux$Layout$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lorg/jline/builtins/Tmux$Layout$$ExternalSyntheticLambda1;-><init>(Lorg/jline/builtins/Tmux$Layout$Type;)V

    .line 1589
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 1590
    invoke-interface {v0}, Ljava/util/stream/IntStream;->min()Ljava/util/OptionalInt;

    move-result-object v0

    const v1, 0x7fffffff

    .line 1591
    invoke-virtual {v0, v1}, Ljava/util/OptionalInt;->orElse(I)I

    move-result v0

    .line 1588
    return v0
.end method

.method private setSize(IIII)V
    .locals 0
    .param p1, "sx"    # I
    .param p2, "sy"    # I
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I

    .line 1726
    iput p1, p0, Lorg/jline/builtins/Tmux$Layout;->sx:I

    .line 1727
    iput p2, p0, Lorg/jline/builtins/Tmux$Layout;->sy:I

    .line 1728
    iput p3, p0, Lorg/jline/builtins/Tmux$Layout;->xoff:I

    .line 1729
    iput p4, p0, Lorg/jline/builtins/Tmux$Layout;->yoff:I

    .line 1730
    return-void
.end method

.method private static toHexChar(I)C
    .locals 1
    .param p0, "i"    # I

    .line 1348
    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    add-int/lit8 v0, p0, 0x30

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p0, -0xa

    add-int/lit8 v0, v0, 0x61

    :goto_0
    int-to-char v0, v0

    return v0
.end method


# virtual methods
.method public countCells()I
    .locals 2

    .line 1657
    sget-object v0, Lorg/jline/builtins/Tmux$1;->$SwitchMap$org$jline$builtins$Tmux$Layout$Type:[I

    iget-object v1, p0, Lorg/jline/builtins/Tmux$Layout;->type:Lorg/jline/builtins/Tmux$Layout$Type;

    invoke-virtual {v1}, Lorg/jline/builtins/Tmux$Layout$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1662
    const/4 v0, 0x1

    return v0

    .line 1660
    :pswitch_0
    iget-object v0, p0, Lorg/jline/builtins/Tmux$Layout;->cells:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/jline/builtins/Tmux$Layout$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/jline/builtins/Tmux$Layout$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->sum()I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public dump()Ljava/lang/String;
    .locals 4

    .line 1336
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1337
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "0000,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1338
    invoke-direct {p0, v0}, Lorg/jline/builtins/Tmux$Layout;->doDump(Ljava/lang/StringBuilder;)V

    .line 1339
    const/4 v1, 0x5

    invoke-static {v0, v1}, Lorg/jline/builtins/Tmux$Layout;->checksum(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 1340
    .local v1, "chk":I
    shr-int/lit8 v2, v1, 0xc

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2}, Lorg/jline/builtins/Tmux$Layout;->toHexChar(I)C

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1341
    shr-int/lit8 v2, v1, 0x8

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2}, Lorg/jline/builtins/Tmux$Layout;->toHexChar(I)C

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1342
    shr-int/lit8 v2, v1, 0x4

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2}, Lorg/jline/builtins/Tmux$Layout;->toHexChar(I)C

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1343
    and-int/lit8 v2, v1, 0xf

    invoke-static {v2}, Lorg/jline/builtins/Tmux$Layout;->toHexChar(I)C

    move-result v2

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1344
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public fixOffsets()V
    .locals 4

    .line 1629
    iget-object v0, p0, Lorg/jline/builtins/Tmux$Layout;->type:Lorg/jline/builtins/Tmux$Layout$Type;

    sget-object v1, Lorg/jline/builtins/Tmux$Layout$Type;->LeftRight:Lorg/jline/builtins/Tmux$Layout$Type;

    if-ne v0, v1, :cond_1

    .line 1630
    iget v0, p0, Lorg/jline/builtins/Tmux$Layout;->xoff:I

    .line 1631
    .local v0, "xoff":I
    iget-object v1, p0, Lorg/jline/builtins/Tmux$Layout;->cells:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jline/builtins/Tmux$Layout;

    .line 1632
    .local v2, "cell":Lorg/jline/builtins/Tmux$Layout;
    iput v0, v2, Lorg/jline/builtins/Tmux$Layout;->xoff:I

    .line 1633
    iget v3, p0, Lorg/jline/builtins/Tmux$Layout;->yoff:I

    iput v3, v2, Lorg/jline/builtins/Tmux$Layout;->yoff:I

    .line 1634
    invoke-virtual {v2}, Lorg/jline/builtins/Tmux$Layout;->fixOffsets()V

    .line 1635
    iget v3, v2, Lorg/jline/builtins/Tmux$Layout;->sx:I

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    .line 1636
    .end local v2    # "cell":Lorg/jline/builtins/Tmux$Layout;
    goto :goto_0

    .line 1631
    .end local v0    # "xoff":I
    :cond_0
    goto :goto_2

    .line 1637
    :cond_1
    iget-object v0, p0, Lorg/jline/builtins/Tmux$Layout;->type:Lorg/jline/builtins/Tmux$Layout$Type;

    sget-object v1, Lorg/jline/builtins/Tmux$Layout$Type;->TopBottom:Lorg/jline/builtins/Tmux$Layout$Type;

    if-ne v0, v1, :cond_2

    .line 1638
    iget v0, p0, Lorg/jline/builtins/Tmux$Layout;->yoff:I

    .line 1639
    .local v0, "yoff":I
    iget-object v1, p0, Lorg/jline/builtins/Tmux$Layout;->cells:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jline/builtins/Tmux$Layout;

    .line 1640
    .restart local v2    # "cell":Lorg/jline/builtins/Tmux$Layout;
    iget v3, p0, Lorg/jline/builtins/Tmux$Layout;->xoff:I

    iput v3, v2, Lorg/jline/builtins/Tmux$Layout;->xoff:I

    .line 1641
    iput v0, v2, Lorg/jline/builtins/Tmux$Layout;->yoff:I

    .line 1642
    invoke-virtual {v2}, Lorg/jline/builtins/Tmux$Layout;->fixOffsets()V

    .line 1643
    iget v3, v2, Lorg/jline/builtins/Tmux$Layout;->sy:I

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    .line 1644
    .end local v2    # "cell":Lorg/jline/builtins/Tmux$Layout;
    goto :goto_1

    .line 1637
    .end local v0    # "yoff":I
    :cond_2
    :goto_2
    nop

    .line 1646
    :cond_3
    return-void
.end method

.method public fixPanes()V
    .locals 0

    .line 1650
    return-void
.end method

.method public fixPanes(II)V
    .locals 0
    .param p1, "sx"    # I
    .param p2, "sy"    # I

    .line 1654
    return-void
.end method

.method nextSibling()Lorg/jline/builtins/Tmux$Layout;
    .locals 3

    .line 1483
    iget-object v0, p0, Lorg/jline/builtins/Tmux$Layout;->parent:Lorg/jline/builtins/Tmux$Layout;

    iget-object v0, v0, Lorg/jline/builtins/Tmux$Layout;->cells:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1484
    .local v0, "idx":I
    iget-object v1, p0, Lorg/jline/builtins/Tmux$Layout;->parent:Lorg/jline/builtins/Tmux$Layout;

    iget-object v1, v1, Lorg/jline/builtins/Tmux$Layout;->cells:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 1485
    iget-object v1, p0, Lorg/jline/builtins/Tmux$Layout;->parent:Lorg/jline/builtins/Tmux$Layout;

    iget-object v1, v1, Lorg/jline/builtins/Tmux$Layout;->cells:Ljava/util/List;

    add-int/lit8 v2, v0, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jline/builtins/Tmux$Layout;

    return-object v1

    .line 1487
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method prevSibling()Lorg/jline/builtins/Tmux$Layout;
    .locals 3

    .line 1474
    iget-object v0, p0, Lorg/jline/builtins/Tmux$Layout;->parent:Lorg/jline/builtins/Tmux$Layout;

    iget-object v0, v0, Lorg/jline/builtins/Tmux$Layout;->cells:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1475
    .local v0, "idx":I
    if-lez v0, :cond_0

    .line 1476
    iget-object v1, p0, Lorg/jline/builtins/Tmux$Layout;->parent:Lorg/jline/builtins/Tmux$Layout;

    iget-object v1, v1, Lorg/jline/builtins/Tmux$Layout;->cells:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jline/builtins/Tmux$Layout;

    return-object v1

    .line 1478
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public remove()V
    .locals 5

    .line 1550
    iget-object v0, p0, Lorg/jline/builtins/Tmux$Layout;->parent:Lorg/jline/builtins/Tmux$Layout;

    if-eqz v0, :cond_4

    .line 1553
    iget-object v0, v0, Lorg/jline/builtins/Tmux$Layout;->cells:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1554
    .local v0, "idx":I
    iget-object v1, p0, Lorg/jline/builtins/Tmux$Layout;->parent:Lorg/jline/builtins/Tmux$Layout;

    iget-object v1, v1, Lorg/jline/builtins/Tmux$Layout;->cells:Ljava/util/List;

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v0, -0x1

    :goto_0
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jline/builtins/Tmux$Layout;

    .line 1555
    .local v1, "other":Lorg/jline/builtins/Tmux$Layout;
    iget-object v3, p0, Lorg/jline/builtins/Tmux$Layout;->parent:Lorg/jline/builtins/Tmux$Layout;

    iget-object v3, v3, Lorg/jline/builtins/Tmux$Layout;->type:Lorg/jline/builtins/Tmux$Layout$Type;

    sget-object v4, Lorg/jline/builtins/Tmux$Layout$Type;->LeftRight:Lorg/jline/builtins/Tmux$Layout$Type;

    if-ne v3, v4, :cond_1

    iget v4, p0, Lorg/jline/builtins/Tmux$Layout;->sx:I

    goto :goto_1

    :cond_1
    iget v4, p0, Lorg/jline/builtins/Tmux$Layout;->sy:I

    :goto_1
    add-int/2addr v4, v2

    invoke-direct {v1, v3, v4}, Lorg/jline/builtins/Tmux$Layout;->resizeAdjust(Lorg/jline/builtins/Tmux$Layout$Type;I)V

    .line 1556
    iget-object v3, p0, Lorg/jline/builtins/Tmux$Layout;->parent:Lorg/jline/builtins/Tmux$Layout;

    iget-object v3, v3, Lorg/jline/builtins/Tmux$Layout;->cells:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1557
    iget-object v3, v1, Lorg/jline/builtins/Tmux$Layout;->parent:Lorg/jline/builtins/Tmux$Layout;

    iget-object v3, v3, Lorg/jline/builtins/Tmux$Layout;->cells:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v2, :cond_3

    .line 1558
    iget-object v2, v1, Lorg/jline/builtins/Tmux$Layout;->parent:Lorg/jline/builtins/Tmux$Layout;

    iget-object v3, v2, Lorg/jline/builtins/Tmux$Layout;->parent:Lorg/jline/builtins/Tmux$Layout;

    if-nez v3, :cond_2

    .line 1559
    const/4 v2, 0x0

    iput-object v2, v1, Lorg/jline/builtins/Tmux$Layout;->parent:Lorg/jline/builtins/Tmux$Layout;

    goto :goto_2

    .line 1561
    :cond_2
    iget-object v3, v3, Lorg/jline/builtins/Tmux$Layout;->cells:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v3, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1562
    iget-object v2, v1, Lorg/jline/builtins/Tmux$Layout;->parent:Lorg/jline/builtins/Tmux$Layout;

    iget-object v2, v2, Lorg/jline/builtins/Tmux$Layout;->parent:Lorg/jline/builtins/Tmux$Layout;

    iput-object v2, v1, Lorg/jline/builtins/Tmux$Layout;->parent:Lorg/jline/builtins/Tmux$Layout;

    .line 1565
    :cond_3
    :goto_2
    return-void

    .line 1551
    .end local v0    # "idx":I
    .end local v1    # "other":Lorg/jline/builtins/Tmux$Layout;
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public resize(II)V
    .locals 5
    .param p1, "sx"    # I
    .param p2, "sy"    # I

    .line 1511
    iget v0, p0, Lorg/jline/builtins/Tmux$Layout;->sx:I

    sub-int v0, p1, v0

    .line 1512
    .local v0, "xchange":I
    sget-object v1, Lorg/jline/builtins/Tmux$Layout$Type;->LeftRight:Lorg/jline/builtins/Tmux$Layout$Type;

    invoke-direct {p0, v1}, Lorg/jline/builtins/Tmux$Layout;->resizeCheck(Lorg/jline/builtins/Tmux$Layout$Type;)I

    move-result v1

    .line 1513
    .local v1, "xlimit":I
    if-gez v0, :cond_0

    neg-int v2, v1

    if-ge v0, v2, :cond_0

    .line 1514
    neg-int v0, v1

    .line 1516
    :cond_0
    if-nez v1, :cond_2

    .line 1517
    iget v2, p0, Lorg/jline/builtins/Tmux$Layout;->sx:I

    if-gt p1, v2, :cond_1

    .line 1518
    const/4 v0, 0x0

    goto :goto_0

    .line 1520
    :cond_1
    sub-int v0, p1, v2

    .line 1523
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 1524
    sget-object v2, Lorg/jline/builtins/Tmux$Layout$Type;->LeftRight:Lorg/jline/builtins/Tmux$Layout$Type;

    invoke-direct {p0, v2, v0}, Lorg/jline/builtins/Tmux$Layout;->resizeAdjust(Lorg/jline/builtins/Tmux$Layout$Type;I)V

    .line 1528
    :cond_3
    iget v2, p0, Lorg/jline/builtins/Tmux$Layout;->sy:I

    sub-int v2, p2, v2

    .line 1529
    .local v2, "ychange":I
    sget-object v3, Lorg/jline/builtins/Tmux$Layout$Type;->TopBottom:Lorg/jline/builtins/Tmux$Layout$Type;

    invoke-direct {p0, v3}, Lorg/jline/builtins/Tmux$Layout;->resizeCheck(Lorg/jline/builtins/Tmux$Layout$Type;)I

    move-result v3

    .line 1530
    .local v3, "ylimit":I
    if-gez v2, :cond_4

    neg-int v4, v3

    if-ge v2, v4, :cond_4

    .line 1531
    neg-int v2, v3

    .line 1533
    :cond_4
    if-nez v3, :cond_6

    .line 1534
    iget v4, p0, Lorg/jline/builtins/Tmux$Layout;->sy:I

    if-gt p2, v4, :cond_5

    .line 1535
    const/4 v2, 0x0

    goto :goto_1

    .line 1537
    :cond_5
    sub-int v2, p2, v4

    .line 1540
    :cond_6
    :goto_1
    if-eqz v2, :cond_7

    .line 1541
    sget-object v4, Lorg/jline/builtins/Tmux$Layout$Type;->TopBottom:Lorg/jline/builtins/Tmux$Layout$Type;

    invoke-direct {p0, v4, v2}, Lorg/jline/builtins/Tmux$Layout;->resizeAdjust(Lorg/jline/builtins/Tmux$Layout$Type;I)V

    .line 1545
    :cond_7
    invoke-virtual {p0}, Lorg/jline/builtins/Tmux$Layout;->fixOffsets()V

    .line 1546
    invoke-virtual {p0, p1, p2}, Lorg/jline/builtins/Tmux$Layout;->fixPanes(II)V

    .line 1547
    return-void
.end method

.method public resize(Lorg/jline/builtins/Tmux$Layout$Type;IZ)V
    .locals 4
    .param p1, "type"    # Lorg/jline/builtins/Tmux$Layout$Type;
    .param p2, "change"    # I
    .param p3, "opposite"    # Z

    .line 1376
    move-object v0, p0

    .line 1377
    .local v0, "lc":Lorg/jline/builtins/Tmux$Layout;
    iget-object v1, v0, Lorg/jline/builtins/Tmux$Layout;->parent:Lorg/jline/builtins/Tmux$Layout;

    .line 1378
    .local v1, "lcparent":Lorg/jline/builtins/Tmux$Layout;
    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, v1, Lorg/jline/builtins/Tmux$Layout;->type:Lorg/jline/builtins/Tmux$Layout$Type;

    if-eq v2, p1, :cond_0

    .line 1379
    move-object v0, v1

    .line 1380
    iget-object v1, v0, Lorg/jline/builtins/Tmux$Layout;->parent:Lorg/jline/builtins/Tmux$Layout;

    goto :goto_0

    .line 1382
    :cond_0
    if-nez v1, :cond_1

    .line 1383
    return-void

    .line 1386
    :cond_1
    invoke-virtual {v0}, Lorg/jline/builtins/Tmux$Layout;->nextSibling()Lorg/jline/builtins/Tmux$Layout;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1387
    invoke-virtual {v0}, Lorg/jline/builtins/Tmux$Layout;->prevSibling()Lorg/jline/builtins/Tmux$Layout;

    move-result-object v0

    .line 1391
    :cond_2
    move v2, p2

    .line 1392
    .local v2, "needed":I
    :cond_3
    if-eqz v2, :cond_5

    .line 1393
    if-lez p2, :cond_4

    .line 1394
    invoke-virtual {v0, p1, v2, p3}, Lorg/jline/builtins/Tmux$Layout;->resizePaneGrow(Lorg/jline/builtins/Tmux$Layout$Type;IZ)I

    move-result v3

    .line 1395
    .local v3, "size":I
    sub-int/2addr v2, v3

    goto :goto_1

    .line 1397
    .end local v3    # "size":I
    :cond_4
    invoke-virtual {v0, p1, v2}, Lorg/jline/builtins/Tmux$Layout;->resizePaneShrink(Lorg/jline/builtins/Tmux$Layout$Type;I)I

    move-result v3

    .line 1398
    .restart local v3    # "size":I
    add-int/2addr v2, v3

    .line 1400
    :goto_1
    if-nez v3, :cond_3

    .line 1405
    .end local v3    # "size":I
    :cond_5
    invoke-virtual {p0}, Lorg/jline/builtins/Tmux$Layout;->fixOffsets()V

    .line 1406
    invoke-virtual {p0}, Lorg/jline/builtins/Tmux$Layout;->fixPanes()V

    .line 1407
    return-void
.end method

.method resizePaneGrow(Lorg/jline/builtins/Tmux$Layout$Type;IZ)I
    .locals 4
    .param p1, "type"    # Lorg/jline/builtins/Tmux$Layout$Type;
    .param p2, "needed"    # I
    .param p3, "opposite"    # Z

    .line 1410
    const/4 v0, 0x0

    .line 1412
    .local v0, "size":I
    move-object v1, p0

    .line 1414
    .local v1, "lcadd":Lorg/jline/builtins/Tmux$Layout;
    invoke-virtual {p0}, Lorg/jline/builtins/Tmux$Layout;->nextSibling()Lorg/jline/builtins/Tmux$Layout;

    move-result-object v2

    .line 1415
    .local v2, "lcremove":Lorg/jline/builtins/Tmux$Layout;
    :goto_0
    if-eqz v2, :cond_1

    .line 1416
    invoke-direct {v2, p1}, Lorg/jline/builtins/Tmux$Layout;->resizeCheck(Lorg/jline/builtins/Tmux$Layout$Type;)I

    move-result v0

    .line 1417
    if-lez v0, :cond_0

    .line 1418
    goto :goto_1

    .line 1420
    :cond_0
    invoke-virtual {v2}, Lorg/jline/builtins/Tmux$Layout;->nextSibling()Lorg/jline/builtins/Tmux$Layout;

    move-result-object v2

    goto :goto_0

    .line 1423
    :cond_1
    :goto_1
    if-eqz p3, :cond_3

    if-nez v2, :cond_3

    .line 1424
    invoke-virtual {p0}, Lorg/jline/builtins/Tmux$Layout;->prevSibling()Lorg/jline/builtins/Tmux$Layout;

    move-result-object v2

    .line 1425
    :goto_2
    if-eqz v2, :cond_3

    .line 1426
    invoke-direct {v2, p1}, Lorg/jline/builtins/Tmux$Layout;->resizeCheck(Lorg/jline/builtins/Tmux$Layout$Type;)I

    move-result v0

    .line 1427
    if-lez v0, :cond_2

    .line 1428
    goto :goto_3

    .line 1430
    :cond_2
    invoke-virtual {v2}, Lorg/jline/builtins/Tmux$Layout;->prevSibling()Lorg/jline/builtins/Tmux$Layout;

    move-result-object v2

    goto :goto_2

    .line 1433
    :cond_3
    :goto_3
    if-nez v2, :cond_4

    .line 1434
    const/4 v3, 0x0

    return v3

    .line 1437
    :cond_4
    if-le v0, p2, :cond_5

    .line 1438
    move v0, p2

    .line 1440
    :cond_5
    invoke-direct {v1, p1, v0}, Lorg/jline/builtins/Tmux$Layout;->resizeAdjust(Lorg/jline/builtins/Tmux$Layout$Type;I)V

    .line 1441
    neg-int v3, v0

    invoke-direct {v2, p1, v3}, Lorg/jline/builtins/Tmux$Layout;->resizeAdjust(Lorg/jline/builtins/Tmux$Layout$Type;I)V

    .line 1442
    return v0
.end method

.method resizePaneShrink(Lorg/jline/builtins/Tmux$Layout$Type;I)I
    .locals 4
    .param p1, "type"    # Lorg/jline/builtins/Tmux$Layout$Type;
    .param p2, "needed"    # I

    .line 1446
    const/4 v0, 0x0

    .line 1448
    .local v0, "size":I
    move-object v1, p0

    .line 1450
    .local v1, "lcremove":Lorg/jline/builtins/Tmux$Layout;
    :cond_0
    invoke-direct {v1, p1}, Lorg/jline/builtins/Tmux$Layout;->resizeCheck(Lorg/jline/builtins/Tmux$Layout$Type;)I

    move-result v0

    .line 1451
    if-lez v0, :cond_1

    .line 1452
    goto :goto_0

    .line 1454
    :cond_1
    invoke-virtual {v1}, Lorg/jline/builtins/Tmux$Layout;->prevSibling()Lorg/jline/builtins/Tmux$Layout;

    move-result-object v1

    .line 1455
    if-nez v1, :cond_0

    .line 1456
    :goto_0
    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 1457
    return v2

    .line 1460
    :cond_2
    invoke-virtual {p0}, Lorg/jline/builtins/Tmux$Layout;->nextSibling()Lorg/jline/builtins/Tmux$Layout;

    move-result-object v3

    .line 1461
    .local v3, "lcadd":Lorg/jline/builtins/Tmux$Layout;
    if-nez v3, :cond_3

    .line 1462
    return v2

    .line 1465
    :cond_3
    neg-int v2, p2

    if-le v0, v2, :cond_4

    .line 1466
    neg-int v0, p2

    .line 1468
    :cond_4
    invoke-direct {v3, p1, v0}, Lorg/jline/builtins/Tmux$Layout;->resizeAdjust(Lorg/jline/builtins/Tmux$Layout$Type;I)V

    .line 1469
    neg-int v2, v0

    invoke-direct {v1, p1, v2}, Lorg/jline/builtins/Tmux$Layout;->resizeAdjust(Lorg/jline/builtins/Tmux$Layout$Type;I)V

    .line 1470
    return v0
.end method

.method public resizeTo(Lorg/jline/builtins/Tmux$Layout$Type;I)V
    .locals 5
    .param p1, "type"    # Lorg/jline/builtins/Tmux$Layout$Type;
    .param p2, "new_size"    # I

    .line 1493
    move-object v0, p0

    .line 1494
    .local v0, "lc":Lorg/jline/builtins/Tmux$Layout;
    iget-object v1, v0, Lorg/jline/builtins/Tmux$Layout;->parent:Lorg/jline/builtins/Tmux$Layout;

    .line 1495
    .local v1, "lcparent":Lorg/jline/builtins/Tmux$Layout;
    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, v1, Lorg/jline/builtins/Tmux$Layout;->type:Lorg/jline/builtins/Tmux$Layout$Type;

    if-eq v2, p1, :cond_0

    .line 1496
    move-object v0, v1

    .line 1497
    iget-object v1, v0, Lorg/jline/builtins/Tmux$Layout;->parent:Lorg/jline/builtins/Tmux$Layout;

    goto :goto_0

    .line 1499
    :cond_0
    if-nez v1, :cond_1

    .line 1500
    return-void

    .line 1503
    :cond_1
    sget-object v2, Lorg/jline/builtins/Tmux$Layout$Type;->LeftRight:Lorg/jline/builtins/Tmux$Layout$Type;

    if-ne p1, v2, :cond_2

    iget v2, v0, Lorg/jline/builtins/Tmux$Layout;->sx:I

    goto :goto_1

    :cond_2
    iget v2, v0, Lorg/jline/builtins/Tmux$Layout;->sy:I

    .line 1504
    .local v2, "size":I
    :goto_1
    invoke-virtual {v0}, Lorg/jline/builtins/Tmux$Layout;->nextSibling()Lorg/jline/builtins/Tmux$Layout;

    move-result-object v3

    if-nez v3, :cond_3

    sub-int v3, v2, p2

    goto :goto_2

    :cond_3
    sub-int v3, p2, v2

    .line 1506
    .local v3, "change":I
    :goto_2
    const/4 v4, 0x1

    invoke-virtual {v0, p1, v3, v4}, Lorg/jline/builtins/Tmux$Layout;->resize(Lorg/jline/builtins/Tmux$Layout$Type;IZ)V

    .line 1507
    return-void
.end method

.method public split(Lorg/jline/builtins/Tmux$Layout$Type;IZ)Lorg/jline/builtins/Tmux$Layout;
    .locals 11
    .param p1, "type"    # Lorg/jline/builtins/Tmux$Layout$Type;
    .param p2, "size"    # I
    .param p3, "insertBefore"    # Z

    .line 1667
    sget-object v0, Lorg/jline/builtins/Tmux$Layout$Type;->WindowPane:Lorg/jline/builtins/Tmux$Layout$Type;

    if-eq p1, v0, :cond_b

    .line 1670
    sget-object v0, Lorg/jline/builtins/Tmux$Layout$Type;->LeftRight:Lorg/jline/builtins/Tmux$Layout$Type;

    if-ne p1, v0, :cond_0

    iget v0, p0, Lorg/jline/builtins/Tmux$Layout;->sx:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/jline/builtins/Tmux$Layout;->sy:I

    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_1

    .line 1671
    const/4 v0, 0x0

    return-object v0

    .line 1673
    :cond_1
    iget-object v0, p0, Lorg/jline/builtins/Tmux$Layout;->parent:Lorg/jline/builtins/Tmux$Layout;

    if-eqz v0, :cond_a

    .line 1677
    sget-object v0, Lorg/jline/builtins/Tmux$Layout$Type;->LeftRight:Lorg/jline/builtins/Tmux$Layout$Type;

    if-ne p1, v0, :cond_2

    iget v0, p0, Lorg/jline/builtins/Tmux$Layout;->sx:I

    goto :goto_1

    :cond_2
    iget v0, p0, Lorg/jline/builtins/Tmux$Layout;->sy:I

    .line 1678
    .local v0, "saved_size":I
    :goto_1
    if-gez p2, :cond_3

    add-int/lit8 v1, v0, 0x1

    div-int/lit8 v1, v1, 0x2

    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_3
    if-eqz p3, :cond_4

    sub-int v1, v0, p2

    goto :goto_2

    :cond_4
    move v1, p2

    .line 1679
    .local v1, "size2":I
    :goto_3
    const/4 v2, 0x3

    if-ge v1, v2, :cond_5

    .line 1680
    const/4 v1, 0x3

    goto :goto_4

    .line 1681
    :cond_5
    add-int/lit8 v2, v0, -0x2

    if-le v1, v2, :cond_6

    .line 1682
    add-int/lit8 v1, v0, -0x2

    .line 1684
    :cond_6
    :goto_4
    add-int/lit8 v2, v0, -0x1

    sub-int/2addr v2, v1

    .line 1686
    .local v2, "size1":I
    iget-object v3, p0, Lorg/jline/builtins/Tmux$Layout;->parent:Lorg/jline/builtins/Tmux$Layout;

    iget-object v3, v3, Lorg/jline/builtins/Tmux$Layout;->type:Lorg/jline/builtins/Tmux$Layout$Type;

    if-eq v3, p1, :cond_7

    .line 1687
    new-instance v3, Lorg/jline/builtins/Tmux$Layout;

    invoke-direct {v3}, Lorg/jline/builtins/Tmux$Layout;-><init>()V

    .line 1688
    .local v3, "p":Lorg/jline/builtins/Tmux$Layout;
    iput-object p1, v3, Lorg/jline/builtins/Tmux$Layout;->type:Lorg/jline/builtins/Tmux$Layout$Type;

    .line 1689
    iget-object v4, p0, Lorg/jline/builtins/Tmux$Layout;->parent:Lorg/jline/builtins/Tmux$Layout;

    iput-object v4, v3, Lorg/jline/builtins/Tmux$Layout;->parent:Lorg/jline/builtins/Tmux$Layout;

    .line 1690
    iget v4, p0, Lorg/jline/builtins/Tmux$Layout;->sx:I

    iput v4, v3, Lorg/jline/builtins/Tmux$Layout;->sx:I

    .line 1691
    iget v4, p0, Lorg/jline/builtins/Tmux$Layout;->sy:I

    iput v4, v3, Lorg/jline/builtins/Tmux$Layout;->sy:I

    .line 1692
    iget v4, p0, Lorg/jline/builtins/Tmux$Layout;->xoff:I

    iput v4, v3, Lorg/jline/builtins/Tmux$Layout;->xoff:I

    .line 1693
    iget v4, p0, Lorg/jline/builtins/Tmux$Layout;->yoff:I

    iput v4, v3, Lorg/jline/builtins/Tmux$Layout;->yoff:I

    .line 1694
    iget-object v4, p0, Lorg/jline/builtins/Tmux$Layout;->parent:Lorg/jline/builtins/Tmux$Layout;

    iget-object v4, v4, Lorg/jline/builtins/Tmux$Layout;->cells:Ljava/util/List;

    invoke-interface {v4, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v4, v5, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1695
    iget-object v4, v3, Lorg/jline/builtins/Tmux$Layout;->cells:Ljava/util/List;

    invoke-interface {v4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1696
    iput-object v3, p0, Lorg/jline/builtins/Tmux$Layout;->parent:Lorg/jline/builtins/Tmux$Layout;

    .line 1698
    .end local v3    # "p":Lorg/jline/builtins/Tmux$Layout;
    :cond_7
    new-instance v3, Lorg/jline/builtins/Tmux$Layout;

    invoke-direct {v3}, Lorg/jline/builtins/Tmux$Layout;-><init>()V

    .line 1699
    .local v3, "cell":Lorg/jline/builtins/Tmux$Layout;
    sget-object v4, Lorg/jline/builtins/Tmux$Layout$Type;->WindowPane:Lorg/jline/builtins/Tmux$Layout$Type;

    iput-object v4, v3, Lorg/jline/builtins/Tmux$Layout;->type:Lorg/jline/builtins/Tmux$Layout$Type;

    .line 1700
    iget-object v4, p0, Lorg/jline/builtins/Tmux$Layout;->parent:Lorg/jline/builtins/Tmux$Layout;

    iput-object v4, v3, Lorg/jline/builtins/Tmux$Layout;->parent:Lorg/jline/builtins/Tmux$Layout;

    .line 1701
    iget-object v4, p0, Lorg/jline/builtins/Tmux$Layout;->parent:Lorg/jline/builtins/Tmux$Layout;

    iget-object v4, v4, Lorg/jline/builtins/Tmux$Layout;->cells:Ljava/util/List;

    invoke-interface {v4, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    xor-int/lit8 v6, p3, 0x1

    add-int/2addr v5, v6

    invoke-interface {v4, v5, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1703
    iget v4, p0, Lorg/jline/builtins/Tmux$Layout;->sx:I

    .line 1704
    .local v4, "sx":I
    iget v5, p0, Lorg/jline/builtins/Tmux$Layout;->sy:I

    .line 1705
    .local v5, "sy":I
    iget v6, p0, Lorg/jline/builtins/Tmux$Layout;->xoff:I

    .line 1706
    .local v6, "xoff":I
    iget v7, p0, Lorg/jline/builtins/Tmux$Layout;->yoff:I

    .line 1708
    .local v7, "yoff":I
    if-eqz p3, :cond_8

    .line 1709
    move-object v8, v3

    .line 1710
    .local v8, "cell1":Lorg/jline/builtins/Tmux$Layout;
    move-object v9, p0

    .local v9, "cell2":Lorg/jline/builtins/Tmux$Layout;
    goto :goto_5

    .line 1712
    .end local v8    # "cell1":Lorg/jline/builtins/Tmux$Layout;
    .end local v9    # "cell2":Lorg/jline/builtins/Tmux$Layout;
    :cond_8
    move-object v8, p0

    .line 1713
    .restart local v8    # "cell1":Lorg/jline/builtins/Tmux$Layout;
    move-object v9, v3

    .line 1715
    .restart local v9    # "cell2":Lorg/jline/builtins/Tmux$Layout;
    :goto_5
    sget-object v10, Lorg/jline/builtins/Tmux$Layout$Type;->LeftRight:Lorg/jline/builtins/Tmux$Layout$Type;

    if-ne p1, v10, :cond_9

    .line 1716
    invoke-direct {v8, v2, v5, v6, v7}, Lorg/jline/builtins/Tmux$Layout;->setSize(IIII)V

    .line 1717
    add-int v10, v6, v2

    add-int/lit8 v10, v10, 0x1

    invoke-direct {v9, v1, v5, v10, v7}, Lorg/jline/builtins/Tmux$Layout;->setSize(IIII)V

    goto :goto_6

    .line 1719
    :cond_9
    invoke-direct {v8, v4, v2, v6, v7}, Lorg/jline/builtins/Tmux$Layout;->setSize(IIII)V

    .line 1720
    add-int v10, v7, v2

    add-int/lit8 v10, v10, 0x1

    invoke-direct {v9, v4, v1, v6, v10}, Lorg/jline/builtins/Tmux$Layout;->setSize(IIII)V

    .line 1722
    :goto_6
    return-object v3

    .line 1674
    .end local v0    # "saved_size":I
    .end local v1    # "size2":I
    .end local v2    # "size1":I
    .end local v3    # "cell":Lorg/jline/builtins/Tmux$Layout;
    .end local v4    # "sx":I
    .end local v5    # "sy":I
    .end local v6    # "xoff":I
    .end local v7    # "yoff":I
    .end local v8    # "cell1":Lorg/jline/builtins/Tmux$Layout;
    .end local v9    # "cell2":Lorg/jline/builtins/Tmux$Layout;
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1668
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
