.class public Lorg/jline/builtins/ScreenTerminal;
.super Ljava/lang/Object;
.source "ScreenTerminal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jline/builtins/ScreenTerminal$State;
    }
.end annotation


# instance fields
.field private attr:J

.field private cx:I

.field private cy:I

.field private dirty:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private eol:Z

.field private height:I

.field private final history:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[J>;"
        }
    .end annotation
.end field

.field private screen:[[J

.field private screen2:[[J

.field private scroll_area_y0:I

.field private scroll_area_y1:I

.field private tab_stops:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private vt100_alternate_saved_cx:I

.field private vt100_alternate_saved_cy:I

.field private vt100_charset_g:[I

.field private vt100_charset_g_sel:I

.field private vt100_charset_graph:[I

.field private vt100_charset_is_graphical:Z

.field private vt100_charset_is_single_shift:Z

.field private vt100_keyfilter_escape:Z

.field private vt100_lastchar:I

.field private vt100_mode_alt_screen:Z

.field private vt100_mode_autowrap:Z

.field private vt100_mode_backspace:Z

.field private vt100_mode_column_switch:Z

.field private vt100_mode_cursor:Z

.field private vt100_mode_cursorkey:Z

.field private vt100_mode_insert:Z

.field private vt100_mode_inverse:Z

.field private vt100_mode_lfnewline:Z

.field private vt100_mode_origin:Z

.field private vt100_out:Ljava/lang/String;

.field private vt100_parse_func:I

.field private vt100_parse_len:I

.field private vt100_parse_param:Ljava/lang/String;

.field private vt100_parse_state:Lorg/jline/builtins/ScreenTerminal$State;

.field private vt100_saved:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private vt100_saved2:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private vt100_saved_cx:I

.field private vt100_saved_cy:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 120
    const/16 v0, 0x50

    const/16 v1, 0x18

    invoke-direct {p0, v0, v1}, Lorg/jline/builtins/ScreenTerminal;-><init>(II)V

    .line 121
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    sget-object v0, Lorg/jline/builtins/ScreenTerminal$State;->None:Lorg/jline/builtins/ScreenTerminal$State;

    iput-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_state:Lorg/jline/builtins/ScreenTerminal$State;

    .line 90
    const/16 v0, 0x20

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_charset_graph:[I

    .line 101
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_charset_g:[I

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->history:Ljava/util/List;

    .line 117
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->dirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 124
    iput p1, p0, Lorg/jline/builtins/ScreenTerminal;->width:I

    .line 125
    iput p2, p0, Lorg/jline/builtins/ScreenTerminal;->height:I

    .line 126
    invoke-direct {p0}, Lorg/jline/builtins/ScreenTerminal;->reset_hard()V

    .line 127
    return-void

    nop

    :array_0
    .array-data 4
        0x25ca
        0x2026
        0x2022
        0x3f
        0xb6
        0x3f
        0xb0
        0xb1
        0x3f
        0x3f
        0x2b
        0x2b
        0x2b
        0x2b
        0x2b
        0xaf
        0x2014
        0x2014
        0x2014
        0x5f
        0x2b
        0x2b
        0x2b
        0x2b
        0x7c
        0x2264
        0x2265
        0xb6
        0x2260
        0xa3
        0xb7
        0x7f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private clear(IIII)V
    .locals 11
    .param p1, "y0"    # I
    .param p2, "x0"    # I
    .param p3, "y1"    # I
    .param p4, "x1"    # I

    .line 272
    iget-wide v0, p0, Lorg/jline/builtins/ScreenTerminal;->attr:J

    const-wide/16 v2, 0x20

    or-long v9, v0, v2

    move-object v4, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-direct/range {v4 .. v10}, Lorg/jline/builtins/ScreenTerminal;->fill(IIIIJ)V

    .line 273
    return-void
.end method

.method private col24(I)J
    .locals 6
    .param p1, "col"    # I

    .line 1017
    invoke-static {p1}, Lorg/jline/utils/Colors;->rgbColor(I)I

    move-result v0

    .line 1018
    .local v0, "c":I
    shr-int/lit8 v1, v0, 0x10

    and-int/lit16 v1, v1, 0xff

    .line 1019
    .local v1, "r":I
    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    .line 1020
    .local v2, "g":I
    shr-int/lit8 v3, v0, 0x0

    and-int/lit16 v3, v3, 0xff

    .line 1021
    .local v3, "b":I
    shr-int/lit8 v4, v1, 0x4

    shl-int/lit8 v4, v4, 0x8

    shr-int/lit8 v5, v2, 0x4

    shl-int/lit8 v5, v5, 0x4

    or-int/2addr v4, v5

    shr-int/lit8 v5, v3, 0x4

    shl-int/lit8 v5, v5, 0x0

    or-int/2addr v4, v5

    int-to-long v4, v4

    return-wide v4
.end method

.method private csi_CBT(Ljava/lang/String;)V
    .locals 3
    .param p1, "p"    # Ljava/lang/String;

    .line 893
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    invoke-direct {p0, p1, v1}, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_params(Ljava/lang/String;[I)[I

    move-result-object v1

    .line 894
    .local v1, "ps":[I
    aget v2, v1, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr v0, v2

    invoke-direct {p0, v0}, Lorg/jline/builtins/ScreenTerminal;->ctrl_HT(I)V

    .line 895
    return-void
.end method

.method private csi_CHA(Ljava/lang/String;)V
    .locals 3
    .param p1, "p"    # Ljava/lang/String;

    .line 801
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    invoke-direct {p0, p1, v1}, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_params(Ljava/lang/String;[I)[I

    move-result-object v1

    .line 802
    .local v1, "ps":[I
    aget v2, v1, v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v2}, Lorg/jline/builtins/ScreenTerminal;->cursor_set_x(I)V

    .line 803
    return-void
.end method

.method private csi_CHT(Ljava/lang/String;)V
    .locals 3
    .param p1, "p"    # Ljava/lang/String;

    .line 815
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    invoke-direct {p0, p1, v1}, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_params(Ljava/lang/String;[I)[I

    move-result-object v1

    .line 816
    .local v1, "ps":[I
    aget v2, v1, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/jline/builtins/ScreenTerminal;->ctrl_HT(I)V

    .line 817
    return-void
.end method

.method private csi_CNL(Ljava/lang/String;)V
    .locals 0
    .param p1, "p"    # Ljava/lang/String;

    .line 791
    invoke-direct {p0, p1}, Lorg/jline/builtins/ScreenTerminal;->csi_CUD(Ljava/lang/String;)V

    .line 792
    invoke-direct {p0}, Lorg/jline/builtins/ScreenTerminal;->ctrl_CR()V

    .line 793
    return-void
.end method

.method private csi_CPL(Ljava/lang/String;)V
    .locals 0
    .param p1, "p"    # Ljava/lang/String;

    .line 796
    invoke-direct {p0, p1}, Lorg/jline/builtins/ScreenTerminal;->csi_CUU(Ljava/lang/String;)V

    .line 797
    invoke-direct {p0}, Lorg/jline/builtins/ScreenTerminal;->ctrl_CR()V

    .line 798
    return-void
.end method

.method private csi_CTC(Ljava/lang/String;)V
    .locals 7
    .param p1, "p"    # Ljava/lang/String;

    .line 871
    const-string v0, "0"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_params(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 872
    .local v1, "ps":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 873
    .local v4, "m":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 874
    iget-object v5, p0, Lorg/jline/builtins/ScreenTerminal;->tab_stops:Ljava/util/List;

    iget v6, p0, Lorg/jline/builtins/ScreenTerminal;->cx:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_2

    .line 875
    iget-object v5, p0, Lorg/jline/builtins/ScreenTerminal;->tab_stops:Ljava/util/List;

    iget v6, p0, Lorg/jline/builtins/ScreenTerminal;->cx:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 876
    iget-object v5, p0, Lorg/jline/builtins/ScreenTerminal;->tab_stops:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_1

    .line 878
    :cond_0
    const-string v5, "2"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 879
    iget-object v5, p0, Lorg/jline/builtins/ScreenTerminal;->tab_stops:Ljava/util/List;

    iget v6, p0, Lorg/jline/builtins/ScreenTerminal;->cx:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 880
    :cond_1
    const-string v5, "5"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 881
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lorg/jline/builtins/ScreenTerminal;->tab_stops:Ljava/util/List;

    .line 872
    .end local v4    # "m":Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 884
    :cond_3
    return-void
.end method

.method private csi_CUB(Ljava/lang/String;)V
    .locals 3
    .param p1, "p"    # Ljava/lang/String;

    .line 786
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    invoke-direct {p0, p1, v1}, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_params(Ljava/lang/String;[I)[I

    move-result-object v1

    .line 787
    .local v1, "ps":[I
    aget v2, v1, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/jline/builtins/ScreenTerminal;->cursor_left(I)V

    .line 788
    return-void
.end method

.method private csi_CUD(Ljava/lang/String;)V
    .locals 3
    .param p1, "p"    # Ljava/lang/String;

    .line 776
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    invoke-direct {p0, p1, v1}, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_params(Ljava/lang/String;[I)[I

    move-result-object v1

    .line 777
    .local v1, "ps":[I
    aget v2, v1, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/jline/builtins/ScreenTerminal;->cursor_down(I)V

    .line 778
    return-void
.end method

.method private csi_CUF(Ljava/lang/String;)V
    .locals 3
    .param p1, "p"    # Ljava/lang/String;

    .line 781
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    invoke-direct {p0, p1, v1}, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_params(Ljava/lang/String;[I)[I

    move-result-object v1

    .line 782
    .local v1, "ps":[I
    aget v2, v1, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/jline/builtins/ScreenTerminal;->cursor_right(I)V

    .line 783
    return-void
.end method

.method private csi_CUP(Ljava/lang/String;)V
    .locals 4
    .param p1, "p"    # Ljava/lang/String;

    .line 806
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-direct {p0, p1, v0}, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_params(Ljava/lang/String;[I)[I

    move-result-object v0

    .line 807
    .local v0, "ps":[I
    iget-boolean v1, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_mode_origin:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 808
    iget v1, p0, Lorg/jline/builtins/ScreenTerminal;->scroll_area_y0:I

    aget v2, v0, v2

    add-int/2addr v1, v2

    sub-int/2addr v1, v3

    aget v2, v0, v3

    sub-int/2addr v2, v3

    invoke-direct {p0, v1, v2}, Lorg/jline/builtins/ScreenTerminal;->cursor_set(II)V

    goto :goto_0

    .line 810
    :cond_0
    aget v1, v0, v2

    sub-int/2addr v1, v3

    aget v2, v0, v3

    sub-int/2addr v2, v3

    invoke-direct {p0, v1, v2}, Lorg/jline/builtins/ScreenTerminal;->cursor_set(II)V

    .line 812
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x1
    .end array-data
.end method

.method private csi_CUU(Ljava/lang/String;)V
    .locals 3
    .param p1, "p"    # Ljava/lang/String;

    .line 771
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    invoke-direct {p0, p1, v1}, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_params(Ljava/lang/String;[I)[I

    move-result-object v1

    .line 772
    .local v1, "ps":[I
    aget v2, v1, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/jline/builtins/ScreenTerminal;->cursor_up(I)V

    .line 773
    return-void
.end method

.method private csi_DA(Ljava/lang/String;)V
    .locals 4
    .param p1, "p"    # Ljava/lang/String;

    .line 919
    const-string v0, "0"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_params(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 920
    .local v1, "ps":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 921
    const-string v0, "\u001b[?1;2c"

    iput-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_out:Ljava/lang/String;

    goto :goto_0

    .line 922
    :cond_0
    aget-object v0, v1, v2

    const-string v3, ">0"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    aget-object v0, v1, v2

    const-string v2, ">"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 923
    :cond_1
    const-string v0, "\u001b[>0;184;0c"

    iput-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_out:Ljava/lang/String;

    .line 925
    :cond_2
    :goto_0
    return-void
.end method

.method private csi_DCH(Ljava/lang/String;)V
    .locals 5
    .param p1, "p"    # Ljava/lang/String;

    .line 856
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    invoke-direct {p0, p1, v1}, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_params(Ljava/lang/String;[I)[I

    move-result-object v1

    .line 857
    .local v1, "ps":[I
    iget v3, p0, Lorg/jline/builtins/ScreenTerminal;->cy:I

    iget v4, p0, Lorg/jline/builtins/ScreenTerminal;->cx:I

    aget v2, v1, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v3, v4, v0}, Lorg/jline/builtins/ScreenTerminal;->scroll_line_left(III)V

    .line 858
    return-void
.end method

.method private csi_DECREQTPARM(Ljava/lang/String;)V
    .locals 4
    .param p1, "p"    # Ljava/lang/String;

    .line 1071
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_params(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1072
    .local v1, "ps":[Ljava/lang/String;
    aget-object v2, v1, v0

    const-string v3, "0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1073
    const-string v0, "\u001b[2;1;1;112;112;1;0x"

    iput-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_out:Ljava/lang/String;

    goto :goto_0

    .line 1074
    :cond_0
    aget-object v0, v1, v0

    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1075
    const-string v0, "\u001b[3;1;1;112;112;1;0x"

    iput-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_out:Ljava/lang/String;

    .line 1077
    :cond_1
    :goto_0
    return-void
.end method

.method private csi_DECSTBM(Ljava/lang/String;)V
    .locals 4
    .param p1, "p"    # Ljava/lang/String;

    .line 1051
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v2, v0, v1

    iget v3, p0, Lorg/jline/builtins/ScreenTerminal;->height:I

    aput v3, v0, v2

    invoke-direct {p0, p1, v0}, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_params(Ljava/lang/String;[I)[I

    move-result-object v0

    .line 1052
    .local v0, "ps":[I
    aget v3, v0, v1

    sub-int/2addr v3, v2

    aget v2, v0, v2

    invoke-direct {p0, v3, v2}, Lorg/jline/builtins/ScreenTerminal;->scroll_area_set(II)V

    .line 1053
    iget-boolean v2, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_mode_origin:Z

    if-eqz v2, :cond_0

    .line 1054
    iget v2, p0, Lorg/jline/builtins/ScreenTerminal;->scroll_area_y0:I

    invoke-direct {p0, v2, v1}, Lorg/jline/builtins/ScreenTerminal;->cursor_set(II)V

    goto :goto_0

    .line 1056
    :cond_0
    invoke-direct {p0, v1, v1}, Lorg/jline/builtins/ScreenTerminal;->cursor_set(II)V

    .line 1058
    :goto_0
    return-void
.end method

.method private csi_DECSTR(Ljava/lang/String;)V
    .locals 0
    .param p1, "p"    # Ljava/lang/String;

    .line 1080
    invoke-direct {p0}, Lorg/jline/builtins/ScreenTerminal;->reset_soft()V

    .line 1081
    return-void
.end method

.method private csi_DL(Ljava/lang/String;)V
    .locals 5
    .param p1, "p"    # Ljava/lang/String;

    .line 849
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    invoke-direct {p0, p1, v1}, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_params(Ljava/lang/String;[I)[I

    move-result-object v1

    .line 850
    .local v1, "ps":[I
    iget v3, p0, Lorg/jline/builtins/ScreenTerminal;->cy:I

    iget v4, p0, Lorg/jline/builtins/ScreenTerminal;->scroll_area_y0:I

    if-lt v3, v4, :cond_0

    iget v4, p0, Lorg/jline/builtins/ScreenTerminal;->scroll_area_y1:I

    if-ge v3, v4, :cond_0

    .line 851
    aget v2, v1, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v3, v4, v0}, Lorg/jline/builtins/ScreenTerminal;->scroll_area_up(III)V

    .line 853
    :cond_0
    return-void
.end method

.method private csi_DSR(Ljava/lang/String;)V
    .locals 6
    .param p1, "p"    # Ljava/lang/String;

    .line 1025
    const-string v0, "0"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_params(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1026
    .local v0, "ps":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v2, v0, v1

    const-string v3, "5"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1027
    const-string v1, "\u001b[0n"

    iput-object v1, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_out:Ljava/lang/String;

    goto/16 :goto_0

    .line 1028
    :cond_0
    aget-object v2, v0, v1

    const-string v3, "6"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, ";"

    const-string v4, "\u001b["

    if-eqz v2, :cond_1

    .line 1029
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/jline/builtins/ScreenTerminal;->cy:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/jline/builtins/ScreenTerminal;->cx:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "R"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_out:Ljava/lang/String;

    goto/16 :goto_0

    .line 1030
    :cond_1
    aget-object v2, v0, v1

    const-string v5, "7"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1031
    const-string v1, "gogo-term"

    iput-object v1, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_out:Ljava/lang/String;

    goto/16 :goto_0

    .line 1032
    :cond_2
    aget-object v2, v0, v1

    const-string v5, "8"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1033
    const-string v1, "1.0-SNAPSHOT"

    iput-object v1, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_out:Ljava/lang/String;

    goto :goto_0

    .line 1034
    :cond_3
    aget-object v2, v0, v1

    const-string v5, "?6"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1035
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/jline/builtins/ScreenTerminal;->cy:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/jline/builtins/ScreenTerminal;->cx:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";0R"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_out:Ljava/lang/String;

    goto :goto_0

    .line 1036
    :cond_4
    aget-object v2, v0, v1

    const-string v3, "?15"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1037
    const-string v1, "\u001b[?13n"

    iput-object v1, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_out:Ljava/lang/String;

    goto :goto_0

    .line 1038
    :cond_5
    aget-object v2, v0, v1

    const-string v3, "?25"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1039
    const-string v1, "\u001b[?20n"

    iput-object v1, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_out:Ljava/lang/String;

    goto :goto_0

    .line 1040
    :cond_6
    aget-object v2, v0, v1

    const-string v3, "?26"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1041
    const-string v1, "\u001b[?27;1n"

    iput-object v1, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_out:Ljava/lang/String;

    goto :goto_0

    .line 1042
    :cond_7
    aget-object v1, v0, v1

    const-string v2, "?53"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1043
    const-string v1, "\u001b[?53n"

    iput-object v1, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_out:Ljava/lang/String;

    .line 1048
    :cond_8
    :goto_0
    return-void
.end method

.method private csi_ECH(Ljava/lang/String;)V
    .locals 6
    .param p1, "p"    # Ljava/lang/String;

    .line 887
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    invoke-direct {p0, p1, v1}, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_params(Ljava/lang/String;[I)[I

    move-result-object v1

    .line 888
    .local v1, "ps":[I
    iget v3, p0, Lorg/jline/builtins/ScreenTerminal;->width:I

    iget v4, p0, Lorg/jline/builtins/ScreenTerminal;->cx:I

    sub-int/2addr v3, v4

    aget v2, v1, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 889
    .local v0, "n":I
    iget v2, p0, Lorg/jline/builtins/ScreenTerminal;->cy:I

    iget v3, p0, Lorg/jline/builtins/ScreenTerminal;->cx:I

    add-int/lit8 v4, v2, 0x1

    add-int v5, v3, v0

    invoke-direct {p0, v2, v3, v4, v5}, Lorg/jline/builtins/ScreenTerminal;->clear(IIII)V

    .line 890
    return-void
.end method

.method private csi_ED(Ljava/lang/String;)V
    .locals 5
    .param p1, "p"    # Ljava/lang/String;

    .line 820
    const-string v0, "0"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_params(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 821
    .local v1, "ps":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 822
    iget v0, p0, Lorg/jline/builtins/ScreenTerminal;->cy:I

    iget v2, p0, Lorg/jline/builtins/ScreenTerminal;->cx:I

    iget v3, p0, Lorg/jline/builtins/ScreenTerminal;->height:I

    iget v4, p0, Lorg/jline/builtins/ScreenTerminal;->width:I

    invoke-direct {p0, v0, v2, v3, v4}, Lorg/jline/builtins/ScreenTerminal;->clear(IIII)V

    goto :goto_0

    .line 823
    :cond_0
    aget-object v0, v1, v2

    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 824
    iget v0, p0, Lorg/jline/builtins/ScreenTerminal;->cy:I

    add-int/lit8 v0, v0, 0x1

    iget v3, p0, Lorg/jline/builtins/ScreenTerminal;->cx:I

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v2, v2, v0, v3}, Lorg/jline/builtins/ScreenTerminal;->clear(IIII)V

    goto :goto_0

    .line 825
    :cond_1
    aget-object v0, v1, v2

    const-string v3, "2"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 826
    iget v0, p0, Lorg/jline/builtins/ScreenTerminal;->height:I

    iget v3, p0, Lorg/jline/builtins/ScreenTerminal;->width:I

    invoke-direct {p0, v2, v2, v0, v3}, Lorg/jline/builtins/ScreenTerminal;->clear(IIII)V

    .line 828
    :cond_2
    :goto_0
    return-void
.end method

.method private csi_EL(Ljava/lang/String;)V
    .locals 5
    .param p1, "p"    # Ljava/lang/String;

    .line 831
    const-string v0, "0"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_params(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 832
    .local v1, "ps":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 833
    iget v0, p0, Lorg/jline/builtins/ScreenTerminal;->cy:I

    iget v2, p0, Lorg/jline/builtins/ScreenTerminal;->cx:I

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lorg/jline/builtins/ScreenTerminal;->width:I

    invoke-direct {p0, v0, v2, v3, v4}, Lorg/jline/builtins/ScreenTerminal;->clear(IIII)V

    goto :goto_0

    .line 834
    :cond_0
    aget-object v0, v1, v2

    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 835
    iget v0, p0, Lorg/jline/builtins/ScreenTerminal;->cy:I

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lorg/jline/builtins/ScreenTerminal;->cx:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v0, v2, v3, v4}, Lorg/jline/builtins/ScreenTerminal;->clear(IIII)V

    goto :goto_0

    .line 836
    :cond_1
    aget-object v0, v1, v2

    const-string v3, "2"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 837
    iget v0, p0, Lorg/jline/builtins/ScreenTerminal;->cy:I

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lorg/jline/builtins/ScreenTerminal;->width:I

    invoke-direct {p0, v0, v2, v3, v4}, Lorg/jline/builtins/ScreenTerminal;->clear(IIII)V

    .line 839
    :cond_2
    :goto_0
    return-void
.end method

.method private csi_HPA(Ljava/lang/String;)V
    .locals 3
    .param p1, "p"    # Ljava/lang/String;

    .line 898
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    invoke-direct {p0, p1, v1}, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_params(Ljava/lang/String;[I)[I

    move-result-object v1

    .line 899
    .local v1, "ps":[I
    aget v2, v1, v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v2}, Lorg/jline/builtins/ScreenTerminal;->cursor_set_x(I)V

    .line 900
    return-void
.end method

.method private csi_HPR(Ljava/lang/String;)V
    .locals 0
    .param p1, "p"    # Ljava/lang/String;

    .line 903
    invoke-direct {p0, p1}, Lorg/jline/builtins/ScreenTerminal;->csi_CUF(Ljava/lang/String;)V

    .line 904
    return-void
.end method

.method private csi_HVP(Ljava/lang/String;)V
    .locals 0
    .param p1, "p"    # Ljava/lang/String;

    .line 937
    invoke-direct {p0, p1}, Lorg/jline/builtins/ScreenTerminal;->csi_CUP(Ljava/lang/String;)V

    .line 938
    return-void
.end method

.method private csi_ICH(Ljava/lang/String;)V
    .locals 4
    .param p1, "p"    # Ljava/lang/String;

    .line 766
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    invoke-direct {p0, p1, v1}, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_params(Ljava/lang/String;[I)[I

    move-result-object v0

    .line 767
    .local v0, "ps":[I
    iget v1, p0, Lorg/jline/builtins/ScreenTerminal;->cy:I

    iget v3, p0, Lorg/jline/builtins/ScreenTerminal;->cx:I

    aget v2, v0, v2

    invoke-direct {p0, v1, v3, v2}, Lorg/jline/builtins/ScreenTerminal;->scroll_line_right(III)V

    .line 768
    return-void
.end method

.method private csi_IL(Ljava/lang/String;)V
    .locals 5
    .param p1, "p"    # Ljava/lang/String;

    .line 842
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    invoke-direct {p0, p1, v1}, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_params(Ljava/lang/String;[I)[I

    move-result-object v1

    .line 843
    .local v1, "ps":[I
    iget v3, p0, Lorg/jline/builtins/ScreenTerminal;->cy:I

    iget v4, p0, Lorg/jline/builtins/ScreenTerminal;->scroll_area_y0:I

    if-lt v3, v4, :cond_0

    iget v4, p0, Lorg/jline/builtins/ScreenTerminal;->scroll_area_y1:I

    if-ge v3, v4, :cond_0

    .line 844
    aget v2, v1, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v3, v4, v0}, Lorg/jline/builtins/ScreenTerminal;->scroll_area_down(III)V

    .line 846
    :cond_0
    return-void
.end method

.method private csi_RCP(Ljava/lang/String;)V
    .locals 1
    .param p1, "p"    # Ljava/lang/String;

    .line 1066
    iget v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_saved_cx:I

    iput v0, p0, Lorg/jline/builtins/ScreenTerminal;->cx:I

    .line 1067
    iget v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_saved_cy:I

    iput v0, p0, Lorg/jline/builtins/ScreenTerminal;->cy:I

    .line 1068
    return-void
.end method

.method private csi_REP(Ljava/lang/String;)V
    .locals 5
    .param p1, "p"    # Ljava/lang/String;

    .line 907
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    invoke-direct {p0, p1, v1}, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_params(Ljava/lang/String;[I)[I

    move-result-object v1

    .line 908
    .local v1, "ps":[I
    iget v3, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_lastchar:I

    const/16 v4, 0x20

    if-ge v3, v4, :cond_0

    .line 909
    return-void

    .line 911
    :cond_0
    const/16 v3, 0x7d0

    aget v4, v1, v2

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 912
    .local v0, "n":I
    :goto_0
    add-int/lit8 v3, v0, -0x1

    .end local v0    # "n":I
    .local v3, "n":I
    if-lez v0, :cond_1

    .line 913
    iget v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_lastchar:I

    invoke-direct {p0, v0}, Lorg/jline/builtins/ScreenTerminal;->dumb_echo(I)V

    move v0, v3

    goto :goto_0

    .line 915
    :cond_1
    iput v2, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_lastchar:I

    .line 916
    return-void
.end method

.method private csi_RM(Ljava/lang/String;)V
    .locals 1
    .param p1, "p"    # Ljava/lang/String;

    .line 954
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jline/builtins/ScreenTerminal;->vt100_setmode(Ljava/lang/String;Z)V

    .line 955
    return-void
.end method

.method private csi_SCP(Ljava/lang/String;)V
    .locals 1
    .param p1, "p"    # Ljava/lang/String;

    .line 1061
    iget v0, p0, Lorg/jline/builtins/ScreenTerminal;->cx:I

    iput v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_saved_cx:I

    .line 1062
    iget v0, p0, Lorg/jline/builtins/ScreenTerminal;->cy:I

    iput v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_saved_cy:I

    .line 1063
    return-void
.end method

.method private csi_SD(Ljava/lang/String;)V
    .locals 5
    .param p1, "p"    # Ljava/lang/String;

    .line 866
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    invoke-direct {p0, p1, v1}, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_params(Ljava/lang/String;[I)[I

    move-result-object v1

    .line 867
    .local v1, "ps":[I
    iget v3, p0, Lorg/jline/builtins/ScreenTerminal;->scroll_area_y0:I

    iget v4, p0, Lorg/jline/builtins/ScreenTerminal;->scroll_area_y1:I

    aget v2, v1, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v3, v4, v0}, Lorg/jline/builtins/ScreenTerminal;->scroll_area_down(III)V

    .line 868
    return-void
.end method

.method private csi_SGR(Ljava/lang/String;)V
    .locals 20
    .param p1, "p"    # Ljava/lang/String;

    .line 967
    move-object/from16 v0, p0

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput v3, v2, v3

    move-object/from16 v4, p1

    invoke-direct {v0, v4, v2}, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_params(Ljava/lang/String;[I)[I

    move-result-object v2

    .line 968
    .local v2, "ps":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v2

    if-ge v5, v6, :cond_15

    .line 969
    aget v6, v2, v5

    .line 970
    .local v6, "m":I
    if-nez v6, :cond_0

    .line 971
    const-wide/16 v7, 0x0

    iput-wide v7, v0, Lorg/jline/builtins/ScreenTerminal;->attr:J

    goto/16 :goto_5

    .line 972
    :cond_0
    if-ne v6, v1, :cond_1

    .line 973
    iget-wide v7, v0, Lorg/jline/builtins/ScreenTerminal;->attr:J

    const-wide/high16 v9, 0x800000000000000L

    or-long/2addr v7, v9

    iput-wide v7, v0, Lorg/jline/builtins/ScreenTerminal;->attr:J

    goto/16 :goto_5

    .line 974
    :cond_1
    const/4 v7, 0x4

    if-ne v6, v7, :cond_2

    .line 975
    iget-wide v7, v0, Lorg/jline/builtins/ScreenTerminal;->attr:J

    const-wide/high16 v9, 0x100000000000000L

    or-long/2addr v7, v9

    iput-wide v7, v0, Lorg/jline/builtins/ScreenTerminal;->attr:J

    goto/16 :goto_5

    .line 976
    :cond_2
    const/4 v7, 0x7

    if-ne v6, v7, :cond_3

    .line 977
    iget-wide v7, v0, Lorg/jline/builtins/ScreenTerminal;->attr:J

    const-wide/high16 v9, 0x200000000000000L

    or-long/2addr v7, v9

    iput-wide v7, v0, Lorg/jline/builtins/ScreenTerminal;->attr:J

    goto/16 :goto_5

    .line 978
    :cond_3
    const/16 v7, 0x8

    if-ne v6, v7, :cond_4

    .line 979
    iget-wide v7, v0, Lorg/jline/builtins/ScreenTerminal;->attr:J

    const-wide/high16 v9, 0x400000000000000L

    or-long/2addr v7, v9

    iput-wide v7, v0, Lorg/jline/builtins/ScreenTerminal;->attr:J

    goto/16 :goto_5

    .line 980
    :cond_4
    const/16 v8, 0x15

    if-ne v6, v8, :cond_5

    .line 981
    iget-wide v7, v0, Lorg/jline/builtins/ScreenTerminal;->attr:J

    const-wide v9, -0x800000100000000L

    and-long/2addr v7, v9

    iput-wide v7, v0, Lorg/jline/builtins/ScreenTerminal;->attr:J

    goto/16 :goto_5

    .line 982
    :cond_5
    const/16 v8, 0x18

    if-ne v6, v8, :cond_6

    .line 983
    iget-wide v7, v0, Lorg/jline/builtins/ScreenTerminal;->attr:J

    const-wide v9, -0x100000100000000L

    and-long/2addr v7, v9

    iput-wide v7, v0, Lorg/jline/builtins/ScreenTerminal;->attr:J

    goto/16 :goto_5

    .line 984
    :cond_6
    const/16 v8, 0x1b

    if-ne v6, v8, :cond_7

    .line 985
    iget-wide v7, v0, Lorg/jline/builtins/ScreenTerminal;->attr:J

    const-wide v9, -0x200000100000000L    # -8.371157001962094E298

    and-long/2addr v7, v9

    iput-wide v7, v0, Lorg/jline/builtins/ScreenTerminal;->attr:J

    goto/16 :goto_5

    .line 986
    :cond_7
    const/16 v8, 0x1c

    if-ne v6, v8, :cond_8

    .line 987
    iget-wide v7, v0, Lorg/jline/builtins/ScreenTerminal;->attr:J

    const-wide v9, -0x400000100000000L

    and-long/2addr v7, v9

    iput-wide v7, v0, Lorg/jline/builtins/ScreenTerminal;->attr:J

    goto/16 :goto_5

    .line 988
    :cond_8
    const/16 v8, 0x1e

    const/16 v9, 0x2c

    const-wide/high16 v10, 0x1000000000000000L

    const-wide v12, -0x10fff00100000000L    # -4.756412156683741E226

    if-lt v6, v8, :cond_9

    const/16 v8, 0x25

    if-gt v6, v8, :cond_9

    .line 989
    iget-wide v7, v0, Lorg/jline/builtins/ScreenTerminal;->attr:J

    and-long/2addr v7, v12

    or-long/2addr v7, v10

    add-int/lit8 v10, v6, -0x1e

    invoke-direct {v0, v10}, Lorg/jline/builtins/ScreenTerminal;->col24(I)J

    move-result-wide v10

    shl-long v9, v10, v9

    or-long/2addr v7, v9

    iput-wide v7, v0, Lorg/jline/builtins/ScreenTerminal;->attr:J

    goto/16 :goto_5

    .line 990
    :cond_9
    const/16 v8, 0x26

    const/4 v14, 0x5

    if-ne v6, v8, :cond_c

    .line 991
    add-int/lit8 v5, v5, 0x1

    array-length v7, v2

    if-ge v5, v7, :cond_a

    aget v7, v2, v5

    goto :goto_1

    :cond_a
    move v7, v3

    :goto_1
    move v6, v7

    .line 992
    if-ne v6, v14, :cond_14

    .line 993
    add-int/lit8 v5, v5, 0x1

    array-length v7, v2

    if-ge v5, v7, :cond_b

    aget v7, v2, v5

    goto :goto_2

    :cond_b
    move v7, v3

    :goto_2
    move v6, v7

    .line 994
    iget-wide v7, v0, Lorg/jline/builtins/ScreenTerminal;->attr:J

    and-long/2addr v7, v12

    or-long/2addr v7, v10

    invoke-direct {v0, v6}, Lorg/jline/builtins/ScreenTerminal;->col24(I)J

    move-result-wide v10

    shl-long v9, v10, v9

    or-long/2addr v7, v9

    iput-wide v7, v0, Lorg/jline/builtins/ScreenTerminal;->attr:J

    goto/16 :goto_5

    .line 996
    :cond_c
    const/16 v8, 0x27

    if-ne v6, v8, :cond_d

    .line 997
    iget-wide v7, v0, Lorg/jline/builtins/ScreenTerminal;->attr:J

    and-long/2addr v7, v12

    iput-wide v7, v0, Lorg/jline/builtins/ScreenTerminal;->attr:J

    goto/16 :goto_5

    .line 998
    :cond_d
    const/16 v8, 0x28

    const/16 v15, 0x20

    const-wide/high16 v16, 0x2000000000000000L

    const-wide v18, -0x2000100000000000L    # -2.6763241610158856E154

    if-lt v6, v8, :cond_e

    const/16 v8, 0x2f

    if-gt v6, v8, :cond_e

    .line 999
    iget-wide v7, v0, Lorg/jline/builtins/ScreenTerminal;->attr:J

    and-long v7, v7, v18

    or-long v7, v7, v16

    add-int/lit8 v9, v6, -0x28

    invoke-direct {v0, v9}, Lorg/jline/builtins/ScreenTerminal;->col24(I)J

    move-result-wide v9

    shl-long/2addr v9, v15

    or-long/2addr v7, v9

    iput-wide v7, v0, Lorg/jline/builtins/ScreenTerminal;->attr:J

    goto/16 :goto_5

    .line 1000
    :cond_e
    const/16 v8, 0x30

    if-ne v6, v8, :cond_11

    .line 1001
    add-int/lit8 v5, v5, 0x1

    array-length v7, v2

    if-ge v5, v7, :cond_f

    aget v7, v2, v5

    goto :goto_3

    :cond_f
    move v7, v3

    :goto_3
    move v6, v7

    .line 1002
    if-ne v6, v14, :cond_14

    .line 1003
    add-int/lit8 v5, v5, 0x1

    array-length v7, v2

    if-ge v5, v7, :cond_10

    aget v7, v2, v5

    goto :goto_4

    :cond_10
    move v7, v3

    :goto_4
    move v6, v7

    .line 1004
    iget-wide v7, v0, Lorg/jline/builtins/ScreenTerminal;->attr:J

    and-long v7, v7, v18

    or-long v7, v7, v16

    invoke-direct {v0, v6}, Lorg/jline/builtins/ScreenTerminal;->col24(I)J

    move-result-wide v9

    shl-long/2addr v9, v15

    or-long/2addr v7, v9

    iput-wide v7, v0, Lorg/jline/builtins/ScreenTerminal;->attr:J

    goto :goto_5

    .line 1006
    :cond_11
    const/16 v8, 0x31

    if-ne v6, v8, :cond_12

    .line 1007
    iget-wide v7, v0, Lorg/jline/builtins/ScreenTerminal;->attr:J

    const-wide v9, -0x20fff00100000000L    # -4.107717710262107E149

    and-long/2addr v7, v9

    iput-wide v7, v0, Lorg/jline/builtins/ScreenTerminal;->attr:J

    goto :goto_5

    .line 1008
    :cond_12
    const/16 v8, 0x5a

    if-lt v6, v8, :cond_13

    const/16 v8, 0x61

    if-gt v6, v8, :cond_13

    .line 1009
    iget-wide v14, v0, Lorg/jline/builtins/ScreenTerminal;->attr:J

    and-long/2addr v12, v14

    or-long/2addr v10, v12

    add-int/lit8 v8, v6, -0x5a

    add-int/2addr v8, v7

    invoke-direct {v0, v8}, Lorg/jline/builtins/ScreenTerminal;->col24(I)J

    move-result-wide v7

    shl-long/2addr v7, v9

    or-long/2addr v7, v10

    iput-wide v7, v0, Lorg/jline/builtins/ScreenTerminal;->attr:J

    goto :goto_5

    .line 1010
    :cond_13
    const/16 v8, 0x64

    if-lt v6, v8, :cond_14

    const/16 v8, 0x6b

    if-gt v6, v8, :cond_14

    .line 1011
    iget-wide v8, v0, Lorg/jline/builtins/ScreenTerminal;->attr:J

    and-long v8, v8, v18

    or-long v8, v8, v16

    add-int/lit8 v10, v6, -0x64

    add-int/2addr v10, v7

    invoke-direct {v0, v10}, Lorg/jline/builtins/ScreenTerminal;->col24(I)J

    move-result-wide v10

    shl-long/2addr v10, v15

    or-long v7, v8, v10

    iput-wide v7, v0, Lorg/jline/builtins/ScreenTerminal;->attr:J

    .line 968
    .end local v6    # "m":I
    :cond_14
    :goto_5
    add-int/2addr v5, v1

    goto/16 :goto_0

    .line 1014
    .end local v5    # "i":I
    :cond_15
    return-void
.end method

.method private csi_SM(Ljava/lang/String;)V
    .locals 1
    .param p1, "p"    # Ljava/lang/String;

    .line 950
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/jline/builtins/ScreenTerminal;->vt100_setmode(Ljava/lang/String;Z)V

    .line 951
    return-void
.end method

.method private csi_SU(Ljava/lang/String;)V
    .locals 5
    .param p1, "p"    # Ljava/lang/String;

    .line 861
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    invoke-direct {p0, p1, v1}, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_params(Ljava/lang/String;[I)[I

    move-result-object v1

    .line 862
    .local v1, "ps":[I
    iget v3, p0, Lorg/jline/builtins/ScreenTerminal;->scroll_area_y0:I

    iget v4, p0, Lorg/jline/builtins/ScreenTerminal;->scroll_area_y1:I

    aget v2, v1, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v3, v4, v0}, Lorg/jline/builtins/ScreenTerminal;->scroll_area_up(III)V

    .line 863
    return-void
.end method

.method private csi_TBC(Ljava/lang/String;)V
    .locals 4
    .param p1, "p"    # Ljava/lang/String;

    .line 941
    const-string v0, "0"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_params(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 942
    .local v1, "ps":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 943
    const-string v0, "2"

    invoke-direct {p0, v0}, Lorg/jline/builtins/ScreenTerminal;->csi_CTC(Ljava/lang/String;)V

    goto :goto_0

    .line 944
    :cond_0
    aget-object v0, v1, v2

    const-string v2, "3"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 945
    const-string v0, "5"

    invoke-direct {p0, v0}, Lorg/jline/builtins/ScreenTerminal;->csi_CTC(Ljava/lang/String;)V

    .line 947
    :cond_1
    :goto_0
    return-void
.end method

.method private csi_VPA(Ljava/lang/String;)V
    .locals 3
    .param p1, "p"    # Ljava/lang/String;

    .line 928
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    invoke-direct {p0, p1, v1}, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_params(Ljava/lang/String;[I)[I

    move-result-object v1

    .line 929
    .local v1, "ps":[I
    aget v2, v1, v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v2}, Lorg/jline/builtins/ScreenTerminal;->cursor_set_y(I)V

    .line 930
    return-void
.end method

.method private csi_VPR(Ljava/lang/String;)V
    .locals 0
    .param p1, "p"    # Ljava/lang/String;

    .line 933
    invoke-direct {p0, p1}, Lorg/jline/builtins/ScreenTerminal;->csi_CUD(Ljava/lang/String;)V

    .line 934
    return-void
.end method

.method private ctrl_BS()V
    .locals 4

    .line 417
    iget v0, p0, Lorg/jline/builtins/ScreenTerminal;->cx:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lorg/jline/builtins/ScreenTerminal;->width:I

    div-int/2addr v0, v1

    .line 418
    .local v0, "dy":I
    iget v1, p0, Lorg/jline/builtins/ScreenTerminal;->scroll_area_y0:I

    iget v2, p0, Lorg/jline/builtins/ScreenTerminal;->cy:I

    add-int/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lorg/jline/builtins/ScreenTerminal;->cx:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lorg/jline/builtins/ScreenTerminal;->width:I

    rem-int/2addr v2, v3

    invoke-direct {p0, v1, v2}, Lorg/jline/builtins/ScreenTerminal;->cursor_set(II)V

    .line 419
    return-void
.end method

.method private ctrl_CR()V
    .locals 1

    .line 458
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jline/builtins/ScreenTerminal;->cursor_set_x(I)V

    .line 459
    return-void
.end method

.method private ctrl_HT()V
    .locals 1

    .line 422
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/jline/builtins/ScreenTerminal;->ctrl_HT(I)V

    .line 423
    return-void
.end method

.method private ctrl_HT(I)V
    .locals 4
    .param p1, "n"    # I

    .line 426
    if-lez p1, :cond_0

    iget v0, p0, Lorg/jline/builtins/ScreenTerminal;->cx:I

    iget v1, p0, Lorg/jline/builtins/ScreenTerminal;->width:I

    if-lt v0, v1, :cond_0

    .line 427
    return-void

    .line 429
    :cond_0
    if-gtz p1, :cond_1

    iget v0, p0, Lorg/jline/builtins/ScreenTerminal;->cx:I

    if-nez v0, :cond_1

    .line 430
    return-void

    .line 432
    :cond_1
    const/4 v0, -0x1

    .line 433
    .local v0, "ts":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/jline/builtins/ScreenTerminal;->tab_stops:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 434
    iget v2, p0, Lorg/jline/builtins/ScreenTerminal;->cx:I

    iget-object v3, p0, Lorg/jline/builtins/ScreenTerminal;->tab_stops:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v2, v3, :cond_2

    .line 435
    move v0, v1

    .line 433
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 438
    .end local v1    # "i":I
    :cond_3
    add-int/2addr v0, p1

    .line 439
    iget-object v1, p0, Lorg/jline/builtins/ScreenTerminal;->tab_stops:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    if-ltz v0, :cond_4

    .line 440
    iget-object v1, p0, Lorg/jline/builtins/ScreenTerminal;->tab_stops:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/jline/builtins/ScreenTerminal;->cursor_set_x(I)V

    goto :goto_1

    .line 442
    :cond_4
    iget v1, p0, Lorg/jline/builtins/ScreenTerminal;->width:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1}, Lorg/jline/builtins/ScreenTerminal;->cursor_set_x(I)V

    .line 444
    :goto_1
    return-void
.end method

.method private ctrl_LF()V
    .locals 3

    .line 447
    iget-boolean v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_mode_lfnewline:Z

    if-eqz v0, :cond_0

    .line 448
    invoke-direct {p0}, Lorg/jline/builtins/ScreenTerminal;->ctrl_CR()V

    .line 450
    :cond_0
    iget v0, p0, Lorg/jline/builtins/ScreenTerminal;->cy:I

    iget v1, p0, Lorg/jline/builtins/ScreenTerminal;->scroll_area_y1:I

    add-int/lit8 v2, v1, -0x1

    if-ne v0, v2, :cond_1

    .line 451
    iget v0, p0, Lorg/jline/builtins/ScreenTerminal;->scroll_area_y0:I

    invoke-direct {p0, v0, v1}, Lorg/jline/builtins/ScreenTerminal;->scroll_area_up(II)V

    goto :goto_0

    .line 453
    :cond_1
    invoke-direct {p0}, Lorg/jline/builtins/ScreenTerminal;->cursor_down()V

    .line 455
    :goto_0
    return-void
.end method

.method private ctrl_SI()V
    .locals 1

    .line 632
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jline/builtins/ScreenTerminal;->vt100_charset_set(I)V

    .line 633
    return-void
.end method

.method private ctrl_SO()V
    .locals 1

    .line 628
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/jline/builtins/ScreenTerminal;->vt100_charset_set(I)V

    .line 629
    return-void
.end method

.method private cursor_down()V
    .locals 1

    .line 368
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/jline/builtins/ScreenTerminal;->cursor_down(I)V

    .line 369
    return-void
.end method

.method private cursor_down(I)V
    .locals 2
    .param p1, "n"    # I

    .line 372
    iget v0, p0, Lorg/jline/builtins/ScreenTerminal;->scroll_area_y1:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lorg/jline/builtins/ScreenTerminal;->cy:I

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/jline/builtins/ScreenTerminal;->cy:I

    .line 373
    invoke-virtual {p0}, Lorg/jline/builtins/ScreenTerminal;->setDirty()V

    .line 374
    return-void
.end method

.method private cursor_left()V
    .locals 1

    .line 377
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/jline/builtins/ScreenTerminal;->cursor_left(I)V

    .line 378
    return-void
.end method

.method private cursor_left(I)V
    .locals 2
    .param p1, "n"    # I

    .line 381
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jline/builtins/ScreenTerminal;->eol:Z

    .line 382
    iget v1, p0, Lorg/jline/builtins/ScreenTerminal;->cx:I

    sub-int/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/jline/builtins/ScreenTerminal;->cx:I

    .line 383
    invoke-virtual {p0}, Lorg/jline/builtins/ScreenTerminal;->setDirty()V

    .line 384
    return-void
.end method

.method private cursor_line_width(I)[I
    .locals 7
    .param p1, "next_char"    # I

    .line 348
    invoke-direct {p0, p1}, Lorg/jline/builtins/ScreenTerminal;->utf8_charwidth(I)I

    move-result v0

    .line 349
    .local v0, "wx":I
    const/4 v1, 0x0

    .line 350
    .local v1, "lx":I
    const/4 v2, 0x0

    .local v2, "x":I
    :goto_0
    iget v3, p0, Lorg/jline/builtins/ScreenTerminal;->cx:I

    iget v4, p0, Lorg/jline/builtins/ScreenTerminal;->width:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    if-ge v2, v3, :cond_0

    .line 351
    iget v3, p0, Lorg/jline/builtins/ScreenTerminal;->cy:I

    add-int/lit8 v5, v3, 0x1

    add-int/lit8 v6, v2, 0x1

    invoke-direct {p0, v3, v2, v5, v6}, Lorg/jline/builtins/ScreenTerminal;->peek(IIII)[J

    move-result-object v3

    aget-wide v3, v3, v4

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    long-to-int v3, v3

    .line 352
    .local v3, "c":I
    invoke-direct {p0, v3}, Lorg/jline/builtins/ScreenTerminal;->utf8_charwidth(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 353
    nop

    .end local v3    # "c":I
    add-int/lit8 v1, v1, 0x1

    .line 350
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 355
    .end local v2    # "x":I
    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v0, v2, v4

    const/4 v3, 0x1

    aput v1, v2, v3

    return-object v2
.end method

.method private cursor_right()V
    .locals 1

    .line 387
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/jline/builtins/ScreenTerminal;->cursor_right(I)V

    .line 388
    return-void
.end method

.method private cursor_right(I)V
    .locals 4
    .param p1, "n"    # I

    .line 391
    iget v0, p0, Lorg/jline/builtins/ScreenTerminal;->cx:I

    add-int v1, v0, p1

    iget v2, p0, Lorg/jline/builtins/ScreenTerminal;->width:I

    const/4 v3, 0x1

    if-lt v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lorg/jline/builtins/ScreenTerminal;->eol:Z

    .line 392
    sub-int/2addr v2, v3

    add-int/2addr v0, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/jline/builtins/ScreenTerminal;->cx:I

    .line 393
    invoke-virtual {p0}, Lorg/jline/builtins/ScreenTerminal;->setDirty()V

    .line 394
    return-void
.end method

.method private cursor_set(II)V
    .locals 0
    .param p1, "y"    # I
    .param p2, "x"    # I

    .line 408
    invoke-direct {p0, p2}, Lorg/jline/builtins/ScreenTerminal;->cursor_set_x(I)V

    .line 409
    invoke-direct {p0, p1}, Lorg/jline/builtins/ScreenTerminal;->cursor_set_y(I)V

    .line 410
    return-void
.end method

.method private cursor_set_x(I)V
    .locals 1
    .param p1, "x"    # I

    .line 397
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jline/builtins/ScreenTerminal;->eol:Z

    .line 398
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/jline/builtins/ScreenTerminal;->cx:I

    .line 399
    invoke-virtual {p0}, Lorg/jline/builtins/ScreenTerminal;->setDirty()V

    .line 400
    return-void
.end method

.method private cursor_set_y(I)V
    .locals 2
    .param p1, "y"    # I

    .line 403
    iget v0, p0, Lorg/jline/builtins/ScreenTerminal;->height:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/jline/builtins/ScreenTerminal;->cy:I

    .line 404
    invoke-virtual {p0}, Lorg/jline/builtins/ScreenTerminal;->setDirty()V

    .line 405
    return-void
.end method

.method private cursor_up()V
    .locals 1

    .line 359
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/jline/builtins/ScreenTerminal;->cursor_up(I)V

    .line 360
    return-void
.end method

.method private cursor_up(I)V
    .locals 2
    .param p1, "n"    # I

    .line 363
    iget v0, p0, Lorg/jline/builtins/ScreenTerminal;->scroll_area_y0:I

    iget v1, p0, Lorg/jline/builtins/ScreenTerminal;->cy:I

    sub-int/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/jline/builtins/ScreenTerminal;->cy:I

    .line 364
    invoke-virtual {p0}, Lorg/jline/builtins/ScreenTerminal;->setDirty()V

    .line 365
    return-void
.end method

.method private dumb_echo(I)V
    .locals 8
    .param p1, "c"    # I

    .line 478
    iget-boolean v0, p0, Lorg/jline/builtins/ScreenTerminal;->eol:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 479
    iget-boolean v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_mode_autowrap:Z

    if-eqz v0, :cond_0

    .line 480
    invoke-direct {p0}, Lorg/jline/builtins/ScreenTerminal;->ctrl_CR()V

    .line 481
    invoke-direct {p0}, Lorg/jline/builtins/ScreenTerminal;->ctrl_LF()V

    goto :goto_0

    .line 483
    :cond_0
    invoke-direct {p0, p1}, Lorg/jline/builtins/ScreenTerminal;->cursor_line_width(I)[I

    move-result-object v0

    aget v0, v0, v1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/jline/builtins/ScreenTerminal;->cx:I

    .line 486
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_mode_insert:Z

    if-eqz v0, :cond_2

    .line 487
    iget v0, p0, Lorg/jline/builtins/ScreenTerminal;->cy:I

    iget v2, p0, Lorg/jline/builtins/ScreenTerminal;->cx:I

    invoke-direct {p0, v0, v2}, Lorg/jline/builtins/ScreenTerminal;->scroll_line_right(II)V

    .line 489
    :cond_2
    iget-boolean v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_charset_is_single_shift:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 490
    iput-boolean v2, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_charset_is_single_shift:Z

    goto :goto_1

    .line 491
    :cond_3
    iget-boolean v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_charset_is_graphical:Z

    if-eqz v0, :cond_4

    const v0, 0xffe0

    and-int/2addr v0, p1

    const/16 v3, 0x60

    if-ne v0, v3, :cond_4

    .line 492
    iget-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_charset_graph:[I

    add-int/lit8 v3, p1, -0x60

    aget p1, v0, v3

    .line 494
    :cond_4
    :goto_1
    iget v0, p0, Lorg/jline/builtins/ScreenTerminal;->cy:I

    iget v3, p0, Lorg/jline/builtins/ScreenTerminal;->cx:I

    new-array v1, v1, [J

    iget-wide v4, p0, Lorg/jline/builtins/ScreenTerminal;->attr:J

    int-to-long v6, p1

    or-long/2addr v4, v6

    aput-wide v4, v1, v2

    invoke-direct {p0, v0, v3, v1}, Lorg/jline/builtins/ScreenTerminal;->poke(II[J)V

    .line 495
    invoke-direct {p0}, Lorg/jline/builtins/ScreenTerminal;->cursor_right()V

    .line 496
    return-void
.end method

.method private dumb_write(I)Z
    .locals 1
    .param p1, "c"    # I

    .line 462
    const/16 v0, 0x20

    if-ge p1, v0, :cond_4

    .line 463
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 464
    invoke-direct {p0}, Lorg/jline/builtins/ScreenTerminal;->ctrl_BS()V

    goto :goto_0

    .line 465
    :cond_0
    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    .line 466
    invoke-direct {p0}, Lorg/jline/builtins/ScreenTerminal;->ctrl_HT()V

    goto :goto_0

    .line 467
    :cond_1
    const/16 v0, 0xa

    if-lt p1, v0, :cond_2

    const/16 v0, 0xc

    if-gt p1, v0, :cond_2

    .line 468
    invoke-direct {p0}, Lorg/jline/builtins/ScreenTerminal;->ctrl_LF()V

    goto :goto_0

    .line 469
    :cond_2
    const/16 v0, 0xd

    if-ne p1, v0, :cond_3

    .line 470
    invoke-direct {p0}, Lorg/jline/builtins/ScreenTerminal;->ctrl_CR()V

    .line 472
    :cond_3
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 474
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method private esc_APC()V
    .locals 1

    .line 758
    sget-object v0, Lorg/jline/builtins/ScreenTerminal$State;->Str:Lorg/jline/builtins/ScreenTerminal$State;

    invoke-direct {p0, v0}, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_reset(Lorg/jline/builtins/ScreenTerminal$State;)V

    .line 759
    return-void
.end method

.method private esc_CSI()V
    .locals 1

    .line 636
    sget-object v0, Lorg/jline/builtins/ScreenTerminal$State;->Csi:Lorg/jline/builtins/ScreenTerminal$State;

    invoke-direct {p0, v0}, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_reset(Lorg/jline/builtins/ScreenTerminal$State;)V

    .line 637
    return-void
.end method

.method private esc_DCS()V
    .locals 1

    .line 735
    sget-object v0, Lorg/jline/builtins/ScreenTerminal$State;->Str:Lorg/jline/builtins/ScreenTerminal$State;

    invoke-direct {p0, v0}, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_reset(Lorg/jline/builtins/ScreenTerminal$State;)V

    .line 736
    return-void
.end method

.method private esc_DECALN()V
    .locals 7

    .line 640
    iget v3, p0, Lorg/jline/builtins/ScreenTerminal;->height:I

    iget v4, p0, Lorg/jline/builtins/ScreenTerminal;->width:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/32 v5, 0xff0045

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/jline/builtins/ScreenTerminal;->fill(IIIIJ)V

    .line 641
    return-void
.end method

.method private esc_DECID()V
    .locals 1

    .line 743
    const-string v0, "0"

    invoke-direct {p0, v0}, Lorg/jline/builtins/ScreenTerminal;->csi_DA(Ljava/lang/String;)V

    .line 744
    return-void
.end method

.method private esc_DECRC()V
    .locals 2

    .line 695
    iget-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_saved:Ljava/util/Map;

    const-string v1, "cx"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/jline/builtins/ScreenTerminal;->cx:I

    .line 696
    iget-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_saved:Ljava/util/Map;

    const-string v1, "cy"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/jline/builtins/ScreenTerminal;->cy:I

    .line 697
    iget-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_saved:Ljava/util/Map;

    const-string v1, "attr"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jline/builtins/ScreenTerminal;->attr:J

    .line 698
    iget-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_saved:Ljava/util/Map;

    const-string v1, "vt100_charset_g_sel"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_charset_g_sel:I

    .line 699
    iget-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_saved:Ljava/util/Map;

    const-string v1, "vt100_charset_g"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_charset_g:[I

    .line 700
    invoke-direct {p0}, Lorg/jline/builtins/ScreenTerminal;->vt100_charset_update()V

    .line 701
    iget-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_saved:Ljava/util/Map;

    const-string v1, "vt100_mode_autowrap"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_mode_autowrap:Z

    .line 702
    iget-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_saved:Ljava/util/Map;

    const-string v1, "vt100_mode_origin"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_mode_origin:Z

    .line 703
    return-void
.end method

.method private esc_DECSC()V
    .locals 3

    .line 684
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_saved:Ljava/util/Map;

    .line 685
    iget v1, p0, Lorg/jline/builtins/ScreenTerminal;->cx:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "cx"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    iget-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_saved:Ljava/util/Map;

    iget v1, p0, Lorg/jline/builtins/ScreenTerminal;->cy:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "cy"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    iget-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_saved:Ljava/util/Map;

    iget-wide v1, p0, Lorg/jline/builtins/ScreenTerminal;->attr:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "attr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    iget-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_saved:Ljava/util/Map;

    iget v1, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_charset_g_sel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "vt100_charset_g_sel"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    iget-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_saved:Ljava/util/Map;

    iget-object v1, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_charset_g:[I

    const-string v2, "vt100_charset_g"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    iget-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_saved:Ljava/util/Map;

    iget-boolean v1, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_mode_autowrap:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "vt100_mode_autowrap"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    iget-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_saved:Ljava/util/Map;

    iget-boolean v1, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_mode_origin:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "vt100_mode_origin"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    return-void
.end method

.method private esc_G0_0()V
    .locals 1

    .line 644
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lorg/jline/builtins/ScreenTerminal;->vt100_charset_select(II)V

    .line 645
    return-void
.end method

.method private esc_G0_1()V
    .locals 2

    .line 648
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/jline/builtins/ScreenTerminal;->vt100_charset_select(II)V

    .line 649
    return-void
.end method

.method private esc_G0_2()V
    .locals 2

    .line 652
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lorg/jline/builtins/ScreenTerminal;->vt100_charset_select(II)V

    .line 653
    return-void
.end method

.method private esc_G0_3()V
    .locals 2

    .line 656
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lorg/jline/builtins/ScreenTerminal;->vt100_charset_select(II)V

    .line 657
    return-void
.end method

.method private esc_G0_4()V
    .locals 2

    .line 660
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lorg/jline/builtins/ScreenTerminal;->vt100_charset_select(II)V

    .line 661
    return-void
.end method

.method private esc_G1_0()V
    .locals 2

    .line 664
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/jline/builtins/ScreenTerminal;->vt100_charset_select(II)V

    .line 665
    return-void
.end method

.method private esc_G1_1()V
    .locals 1

    .line 668
    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lorg/jline/builtins/ScreenTerminal;->vt100_charset_select(II)V

    .line 669
    return-void
.end method

.method private esc_G1_2()V
    .locals 2

    .line 672
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lorg/jline/builtins/ScreenTerminal;->vt100_charset_select(II)V

    .line 673
    return-void
.end method

.method private esc_G1_3()V
    .locals 2

    .line 676
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lorg/jline/builtins/ScreenTerminal;->vt100_charset_select(II)V

    .line 677
    return-void
.end method

.method private esc_G1_4()V
    .locals 2

    .line 680
    const/4 v0, 0x1

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lorg/jline/builtins/ScreenTerminal;->vt100_charset_select(II)V

    .line 681
    return-void
.end method

.method private esc_HTS()V
    .locals 1

    .line 715
    const-string v0, "0"

    invoke-direct {p0, v0}, Lorg/jline/builtins/ScreenTerminal;->csi_CTC(Ljava/lang/String;)V

    .line 716
    return-void
.end method

.method private esc_IND()V
    .locals 0

    .line 706
    invoke-direct {p0}, Lorg/jline/builtins/ScreenTerminal;->ctrl_LF()V

    .line 707
    return-void
.end method

.method private esc_NEL()V
    .locals 0

    .line 710
    invoke-direct {p0}, Lorg/jline/builtins/ScreenTerminal;->ctrl_CR()V

    .line 711
    invoke-direct {p0}, Lorg/jline/builtins/ScreenTerminal;->ctrl_LF()V

    .line 712
    return-void
.end method

.method private esc_OSC()V
    .locals 1

    .line 750
    sget-object v0, Lorg/jline/builtins/ScreenTerminal$State;->Str:Lorg/jline/builtins/ScreenTerminal$State;

    invoke-direct {p0, v0}, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_reset(Lorg/jline/builtins/ScreenTerminal$State;)V

    .line 751
    return-void
.end method

.method private esc_PM()V
    .locals 1

    .line 754
    sget-object v0, Lorg/jline/builtins/ScreenTerminal$State;->Str:Lorg/jline/builtins/ScreenTerminal$State;

    invoke-direct {p0, v0}, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_reset(Lorg/jline/builtins/ScreenTerminal$State;)V

    .line 755
    return-void
.end method

.method private esc_RI()V
    .locals 2

    .line 719
    iget v0, p0, Lorg/jline/builtins/ScreenTerminal;->cy:I

    iget v1, p0, Lorg/jline/builtins/ScreenTerminal;->scroll_area_y0:I

    if-ne v0, v1, :cond_0

    .line 720
    iget v0, p0, Lorg/jline/builtins/ScreenTerminal;->scroll_area_y1:I

    invoke-direct {p0, v1, v0}, Lorg/jline/builtins/ScreenTerminal;->scroll_area_down(II)V

    goto :goto_0

    .line 722
    :cond_0
    invoke-direct {p0}, Lorg/jline/builtins/ScreenTerminal;->cursor_up()V

    .line 724
    :goto_0
    return-void
.end method

.method private esc_RIS()V
    .locals 0

    .line 762
    invoke-direct {p0}, Lorg/jline/builtins/ScreenTerminal;->reset_hard()V

    .line 763
    return-void
.end method

.method private esc_SOS()V
    .locals 1

    .line 739
    sget-object v0, Lorg/jline/builtins/ScreenTerminal$State;->Str:Lorg/jline/builtins/ScreenTerminal$State;

    invoke-direct {p0, v0}, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_reset(Lorg/jline/builtins/ScreenTerminal$State;)V

    .line 740
    return-void
.end method

.method private esc_SS2()V
    .locals 1

    .line 727
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_charset_is_single_shift:Z

    .line 728
    return-void
.end method

.method private esc_SS3()V
    .locals 1

    .line 731
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_charset_is_single_shift:Z

    .line 732
    return-void
.end method

.method private esc_ST()V
    .locals 0

    .line 747
    return-void
.end method

.method private fill(IIIIJ)V
    .locals 2
    .param p1, "y0"    # I
    .param p2, "x0"    # I
    .param p3, "y1"    # I
    .param p4, "x1"    # I
    .param p5, "c"    # J

    .line 256
    add-int/lit8 v0, p3, -0x1

    if-ne p1, v0, :cond_0

    .line 257
    add-int/lit8 v0, p4, -0x1

    if-ge p2, v0, :cond_2

    .line 258
    iget-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->screen:[[J

    aget-object v0, v0, p1

    invoke-static {v0, p2, p4, p5, p6}, Ljava/util/Arrays;->fill([JIIJ)V

    .line 259
    invoke-virtual {p0}, Lorg/jline/builtins/ScreenTerminal;->setDirty()V

    goto :goto_1

    .line 261
    :cond_0
    add-int/lit8 v0, p3, -0x1

    if-ge p1, v0, :cond_2

    .line 262
    iget-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->screen:[[J

    aget-object v0, v0, p1

    iget v1, p0, Lorg/jline/builtins/ScreenTerminal;->width:I

    invoke-static {v0, p2, v1, p5, p6}, Ljava/util/Arrays;->fill([JIIJ)V

    .line 263
    move v0, p1

    .local v0, "i":I
    :goto_0
    add-int/lit8 v1, p3, -0x1

    if-ge v0, v1, :cond_1

    .line 264
    iget-object v1, p0, Lorg/jline/builtins/ScreenTerminal;->screen:[[J

    aget-object v1, v1, v0

    invoke-static {v1, p5, p6}, Ljava/util/Arrays;->fill([JJ)V

    .line 263
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 266
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->screen:[[J

    add-int/lit8 v1, p3, -0x1

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1, p4, p5, p6}, Ljava/util/Arrays;->fill([JIIJ)V

    .line 267
    invoke-virtual {p0}, Lorg/jline/builtins/ScreenTerminal;->setDirty()V

    .line 269
    :cond_2
    :goto_1
    return-void
.end method

.method private peek(IIII)[J
    .locals 10
    .param p1, "y0"    # I
    .param p2, "x0"    # I
    .param p3, "y1"    # I
    .param p4, "x1"    # I

    .line 226
    iget v0, p0, Lorg/jline/builtins/ScreenTerminal;->width:I

    mul-int v1, v0, p1

    add-int/2addr v1, p2

    .line 227
    .local v1, "from":I
    add-int/lit8 v2, p3, -0x1

    mul-int/2addr v0, v2

    add-int/2addr v0, p4

    .line 228
    .local v0, "to":I
    sub-int v2, v0, v1

    .line 229
    .local v2, "newLength":I
    if-ltz v2, :cond_1

    .line 231
    new-array v3, v2, [J

    .line 232
    .local v3, "copy":[J
    move v4, v1

    .line 233
    .local v4, "cur":I
    :goto_0
    if-ge v4, v0, :cond_0

    .line 234
    iget v5, p0, Lorg/jline/builtins/ScreenTerminal;->width:I

    div-int v6, v4, v5

    .line 235
    .local v6, "y":I
    rem-int v7, v4, v5

    .line 236
    .local v7, "x":I
    sub-int/2addr v5, v7

    sub-int v8, v0, v4

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 237
    .local v5, "nb":I
    iget-object v8, p0, Lorg/jline/builtins/ScreenTerminal;->screen:[[J

    aget-object v8, v8, v6

    sub-int v9, v4, v1

    invoke-static {v8, v7, v3, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 238
    add-int/2addr v4, v5

    .line 239
    .end local v5    # "nb":I
    .end local v6    # "y":I
    .end local v7    # "x":I
    goto :goto_0

    .line 240
    :cond_0
    return-object v3

    .line 230
    .end local v3    # "copy":[J
    .end local v4    # "cur":I
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private poke(II[J)V
    .locals 6
    .param p1, "y"    # I
    .param p2, "x"    # I
    .param p3, "s"    # [J

    .line 244
    const/4 v0, 0x0

    .line 245
    .local v0, "cur":I
    array-length v1, p3

    .line 246
    .local v1, "max":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 247
    iget v2, p0, Lorg/jline/builtins/ScreenTerminal;->width:I

    sub-int/2addr v2, p2

    sub-int v3, v1, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 248
    .local v2, "nb":I
    const/4 v3, 0x0

    iget-object v4, p0, Lorg/jline/builtins/ScreenTerminal;->screen:[[J

    add-int/lit8 v5, p1, 0x1

    .end local p1    # "y":I
    .local v5, "y":I
    aget-object p1, v4, p1

    invoke-static {p3, v3, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 249
    const/4 p2, 0x0

    .line 250
    add-int/2addr v0, v2

    .line 251
    .end local v2    # "nb":I
    move p1, v5

    goto :goto_0

    .line 252
    .end local v5    # "y":I
    .restart local p1    # "y":I
    :cond_0
    invoke-virtual {p0}, Lorg/jline/builtins/ScreenTerminal;->setDirty()V

    .line 253
    return-void
.end method

.method private reset_hard()V
    .locals 2

    .line 139
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/jline/builtins/ScreenTerminal;->attr:J

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_keyfilter_escape:Z

    .line 143
    iput v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_lastchar:I

    .line 145
    iput v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_len:I

    .line 146
    sget-object v1, Lorg/jline/builtins/ScreenTerminal$State;->None:Lorg/jline/builtins/ScreenTerminal$State;

    iput-object v1, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_state:Lorg/jline/builtins/ScreenTerminal$State;

    .line 147
    iput v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_func:I

    .line 148
    const-string v0, ""

    iput-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_param:Ljava/lang/String;

    .line 150
    iput-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_out:Ljava/lang/String;

    .line 152
    invoke-direct {p0}, Lorg/jline/builtins/ScreenTerminal;->reset_screen()V

    .line 153
    invoke-direct {p0}, Lorg/jline/builtins/ScreenTerminal;->reset_soft()V

    .line 154
    return-void
.end method

.method private reset_screen()V
    .locals 7

    .line 194
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x2

    new-array v2, v1, [I

    iget v3, p0, Lorg/jline/builtins/ScreenTerminal;->height:I

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v3, p0, Lorg/jline/builtins/ScreenTerminal;->width:I

    const/4 v5, 0x1

    aput v3, v2, v5

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    iput-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->screen:[[J

    .line 195
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    new-array v1, v1, [I

    iget v2, p0, Lorg/jline/builtins/ScreenTerminal;->height:I

    aput v2, v1, v4

    iget v2, p0, Lorg/jline/builtins/ScreenTerminal;->width:I

    aput v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    iput-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->screen2:[[J

    .line 196
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/jline/builtins/ScreenTerminal;->height:I

    if-ge v0, v1, :cond_0

    .line 197
    iget-object v1, p0, Lorg/jline/builtins/ScreenTerminal;->screen:[[J

    aget-object v1, v1, v0

    iget-wide v2, p0, Lorg/jline/builtins/ScreenTerminal;->attr:J

    const-wide/16 v5, 0x20

    or-long/2addr v2, v5

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    .line 198
    iget-object v1, p0, Lorg/jline/builtins/ScreenTerminal;->screen2:[[J

    aget-object v1, v1, v0

    iget-wide v2, p0, Lorg/jline/builtins/ScreenTerminal;->attr:J

    or-long/2addr v2, v5

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 201
    .end local v0    # "i":I
    :cond_0
    iput v4, p0, Lorg/jline/builtins/ScreenTerminal;->scroll_area_y0:I

    .line 202
    iput v1, p0, Lorg/jline/builtins/ScreenTerminal;->scroll_area_y1:I

    .line 204
    iput v4, p0, Lorg/jline/builtins/ScreenTerminal;->cx:I

    .line 205
    iput v4, p0, Lorg/jline/builtins/ScreenTerminal;->cy:I

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->tab_stops:Ljava/util/List;

    .line 208
    const/4 v0, 0x7

    .restart local v0    # "i":I
    :goto_1
    iget v1, p0, Lorg/jline/builtins/ScreenTerminal;->width:I

    if-ge v0, v1, :cond_1

    .line 209
    iget-object v1, p0, Lorg/jline/builtins/ScreenTerminal;->tab_stops:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    add-int/lit8 v0, v0, 0x8

    goto :goto_1

    .line 211
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private reset_soft()V
    .locals 2

    .line 166
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/jline/builtins/ScreenTerminal;->attr:J

    .line 168
    const/4 v0, 0x0

    iput v0, p0, Lorg/jline/builtins/ScreenTerminal;->scroll_area_y0:I

    .line 169
    iget v1, p0, Lorg/jline/builtins/ScreenTerminal;->height:I

    iput v1, p0, Lorg/jline/builtins/ScreenTerminal;->scroll_area_y1:I

    .line 171
    iput-boolean v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_charset_is_single_shift:Z

    .line 172
    iput-boolean v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_charset_is_graphical:Z

    .line 173
    iput v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_charset_g_sel:I

    .line 174
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_charset_g:[I

    .line 176
    iput-boolean v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_mode_insert:Z

    .line 177
    iput-boolean v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_mode_lfnewline:Z

    .line 178
    iput-boolean v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_mode_cursorkey:Z

    .line 179
    iput-boolean v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_mode_column_switch:Z

    .line 180
    iput-boolean v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_mode_inverse:Z

    .line 181
    iput-boolean v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_mode_origin:Z

    .line 182
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_mode_autowrap:Z

    .line 183
    iput-boolean v1, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_mode_cursor:Z

    .line 184
    iput-boolean v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_mode_alt_screen:Z

    .line 185
    iput-boolean v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_mode_backspace:Z

    .line 187
    invoke-direct {p0}, Lorg/jline/builtins/ScreenTerminal;->esc_DECSC()V

    .line 188
    iget-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_saved:Ljava/util/Map;

    iput-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_saved2:Ljava/util/Map;

    .line 189
    invoke-direct {p0}, Lorg/jline/builtins/ScreenTerminal;->esc_DECSC()V

    .line 190
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private scroll_area_down(II)V
    .locals 1
    .param p1, "y0"    # I
    .param p2, "y1"    # I

    .line 301
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/jline/builtins/ScreenTerminal;->scroll_area_down(III)V

    .line 302
    return-void
.end method

.method private scroll_area_down(III)V
    .locals 4
    .param p1, "y0"    # I
    .param p2, "y1"    # I
    .param p3, "n"    # I

    .line 305
    sub-int v0, p2, p1

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 306
    add-int v0, p1, p3

    sub-int v1, p2, p3

    iget v2, p0, Lorg/jline/builtins/ScreenTerminal;->width:I

    const/4 v3, 0x0

    invoke-direct {p0, p1, v3, v1, v2}, Lorg/jline/builtins/ScreenTerminal;->peek(IIII)[J

    move-result-object v1

    invoke-direct {p0, v0, v3, v1}, Lorg/jline/builtins/ScreenTerminal;->poke(II[J)V

    .line 307
    add-int v0, p1, p3

    iget v1, p0, Lorg/jline/builtins/ScreenTerminal;->width:I

    invoke-direct {p0, p1, v3, v0, v1}, Lorg/jline/builtins/ScreenTerminal;->clear(IIII)V

    .line 308
    return-void
.end method

.method private scroll_area_set(II)V
    .locals 3
    .param p1, "y0"    # I
    .param p2, "y1"    # I

    .line 311
    iget v0, p0, Lorg/jline/builtins/ScreenTerminal;->height:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 312
    iget v0, p0, Lorg/jline/builtins/ScreenTerminal;->height:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 313
    if-le p2, p1, :cond_0

    .line 314
    iput p1, p0, Lorg/jline/builtins/ScreenTerminal;->scroll_area_y0:I

    .line 315
    iput p2, p0, Lorg/jline/builtins/ScreenTerminal;->scroll_area_y1:I

    .line 317
    :cond_0
    return-void
.end method

.method private scroll_area_up(II)V
    .locals 1
    .param p1, "y0"    # I
    .param p2, "y1"    # I

    .line 280
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/jline/builtins/ScreenTerminal;->scroll_area_up(III)V

    .line 281
    return-void
.end method

.method private scroll_area_up(III)V
    .locals 6
    .param p1, "y0"    # I
    .param p2, "y1"    # I
    .param p3, "n"    # I

    .line 284
    sub-int v0, p2, p1

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 285
    const/4 v0, 0x0

    if-nez p1, :cond_2

    iget v1, p0, Lorg/jline/builtins/ScreenTerminal;->height:I

    if-ne p2, v1, :cond_2

    .line 286
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 287
    iget-object v2, p0, Lorg/jline/builtins/ScreenTerminal;->history:Ljava/util/List;

    iget-object v3, p0, Lorg/jline/builtins/ScreenTerminal;->screen:[[J

    aget-object v3, v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 289
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lorg/jline/builtins/ScreenTerminal;->screen:[[J

    iget v2, p0, Lorg/jline/builtins/ScreenTerminal;->height:I

    sub-int/2addr v2, p3

    invoke-static {v1, p3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 290
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    if-gt v0, p3, :cond_1

    .line 291
    iget-object v1, p0, Lorg/jline/builtins/ScreenTerminal;->screen:[[J

    sub-int v2, p2, v0

    iget v3, p0, Lorg/jline/builtins/ScreenTerminal;->width:I

    new-array v3, v3, [J

    aput-object v3, v1, v2

    .line 292
    add-int/lit8 v2, p2, -0x1

    aget-object v1, v1, v2

    iget-wide v2, p0, Lorg/jline/builtins/ScreenTerminal;->attr:J

    const-wide/16 v4, 0x20

    or-long/2addr v2, v4

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    .line 290
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    :cond_1
    goto :goto_2

    .line 295
    :cond_2
    add-int v1, p1, p3

    iget v2, p0, Lorg/jline/builtins/ScreenTerminal;->width:I

    invoke-direct {p0, v1, v0, p2, v2}, Lorg/jline/builtins/ScreenTerminal;->peek(IIII)[J

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lorg/jline/builtins/ScreenTerminal;->poke(II[J)V

    .line 296
    sub-int v1, p2, p3

    iget v2, p0, Lorg/jline/builtins/ScreenTerminal;->width:I

    invoke-direct {p0, v1, v0, p2, v2}, Lorg/jline/builtins/ScreenTerminal;->clear(IIII)V

    .line 298
    :goto_2
    return-void
.end method

.method private scroll_line_left(II)V
    .locals 1
    .param p1, "y"    # I
    .param p2, "x"    # I

    .line 332
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/jline/builtins/ScreenTerminal;->scroll_line_left(III)V

    .line 333
    return-void
.end method

.method private scroll_line_left(III)V
    .locals 3
    .param p1, "y"    # I
    .param p2, "x"    # I
    .param p3, "n"    # I

    .line 336
    iget v0, p0, Lorg/jline/builtins/ScreenTerminal;->width:I

    if-ge p2, v0, :cond_0

    .line 337
    iget v1, p0, Lorg/jline/builtins/ScreenTerminal;->cx:I

    sub-int/2addr v0, v1

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 338
    add-int v0, p2, p3

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Lorg/jline/builtins/ScreenTerminal;->width:I

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/jline/builtins/ScreenTerminal;->peek(IIII)[J

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/jline/builtins/ScreenTerminal;->poke(II[J)V

    .line 339
    iget v0, p0, Lorg/jline/builtins/ScreenTerminal;->width:I

    sub-int v1, v0, p3

    add-int/lit8 v2, p1, 0x1

    invoke-direct {p0, p1, v1, v2, v0}, Lorg/jline/builtins/ScreenTerminal;->clear(IIII)V

    .line 341
    :cond_0
    return-void
.end method

.method private scroll_line_right(II)V
    .locals 1
    .param p1, "y"    # I
    .param p2, "x"    # I

    .line 320
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/jline/builtins/ScreenTerminal;->scroll_line_right(III)V

    .line 321
    return-void
.end method

.method private scroll_line_right(III)V
    .locals 3
    .param p1, "y"    # I
    .param p2, "x"    # I
    .param p3, "n"    # I

    .line 324
    iget v0, p0, Lorg/jline/builtins/ScreenTerminal;->width:I

    if-ge p2, v0, :cond_0

    .line 325
    iget v1, p0, Lorg/jline/builtins/ScreenTerminal;->cx:I

    sub-int/2addr v0, v1

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 326
    add-int v0, p2, p3

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Lorg/jline/builtins/ScreenTerminal;->width:I

    sub-int/2addr v2, p3

    invoke-direct {p0, p1, p2, v1, v2}, Lorg/jline/builtins/ScreenTerminal;->peek(IIII)[J

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lorg/jline/builtins/ScreenTerminal;->poke(II[J)V

    .line 327
    add-int/lit8 v0, p1, 0x1

    add-int v1, p2, p3

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/jline/builtins/ScreenTerminal;->clear(IIII)V

    .line 329
    :cond_0
    return-void
.end method

.method private utf8_charwidth(I)I
    .locals 1
    .param p1, "c"    # I

    .line 218
    invoke-static {p1}, Lorg/jline/utils/WCWidth;->wcwidth(I)I

    move-result v0

    return v0
.end method

.method private vt100_charset_select(II)V
    .locals 1
    .param p1, "g"    # I
    .param p2, "charset"    # I

    .line 514
    iget-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_charset_g:[I

    aput p2, v0, p1

    .line 515
    invoke-direct {p0}, Lorg/jline/builtins/ScreenTerminal;->vt100_charset_update()V

    .line 516
    return-void
.end method

.method private vt100_charset_set(I)V
    .locals 0
    .param p1, "g"    # I

    .line 508
    iput p1, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_charset_g_sel:I

    .line 509
    invoke-direct {p0}, Lorg/jline/builtins/ScreenTerminal;->vt100_charset_update()V

    .line 510
    return-void
.end method

.method private vt100_charset_update()V
    .locals 2

    .line 503
    iget-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_charset_g:[I

    iget v1, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_charset_g_sel:I

    aget v0, v0, v1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_charset_is_graphical:Z

    .line 504
    return-void
.end method

.method private vt100_parse_params(Ljava/lang/String;[I)[I
    .locals 9
    .param p1, "p"    # Ljava/lang/String;
    .param p2, "defaults"    # [I

    .line 1115
    const-string v0, ""

    .line 1116
    .local v0, "prefix":Ljava/lang/String;
    if-nez p1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    move-object p1, v1

    .line 1117
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_1

    .line 1118
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x3c

    if-lt v1, v3, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x3f

    if-gt v1, v3, :cond_1

    .line 1119
    const/4 v1, 0x1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1120
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1123
    :cond_1
    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1124
    .local v1, "ps":[Ljava/lang/String;
    array-length v3, v1

    array-length v4, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1125
    .local v3, "n":I
    new-array v4, v3, [I

    .line 1126
    .local v4, "values":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v3, :cond_5

    .line 1127
    const/4 v6, 0x0

    .line 1128
    .local v6, "value":Ljava/lang/Integer;
    array-length v7, v1

    if-ge v5, v7, :cond_2

    .line 1129
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v1, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1131
    .local v7, "v":Ljava/lang/String;
    :try_start_0
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v8

    .line 1133
    goto :goto_2

    .line 1132
    :catch_0
    move-exception v8

    .line 1135
    .end local v7    # "v":Ljava/lang/String;
    :cond_2
    :goto_2
    if-nez v6, :cond_3

    array-length v7, p2

    if-ge v5, v7, :cond_3

    .line 1136
    aget v7, p2, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1138
    :cond_3
    if-nez v6, :cond_4

    .line 1139
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1141
    :cond_4
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v4, v5

    .line 1126
    .end local v6    # "value":Ljava/lang/Integer;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1143
    .end local v5    # "i":I
    :cond_5
    return-object v4
.end method

.method private vt100_parse_params(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .param p1, "p"    # Ljava/lang/String;
    .param p2, "defaults"    # [Ljava/lang/String;

    .line 1088
    const-string v0, ""

    .line 1089
    .local v0, "prefix":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1090
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3c

    if-lt v2, v3, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3f

    if-gt v2, v3, :cond_0

    .line 1091
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1092
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1095
    :cond_0
    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1096
    .local v1, "ps":[Ljava/lang/String;
    array-length v2, v1

    array-length v3, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1097
    .local v2, "n":I
    new-array v3, v2, [Ljava/lang/String;

    .line 1098
    .local v3, "values":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_4

    .line 1099
    const/4 v5, 0x0

    .line 1100
    .local v5, "value":Ljava/lang/String;
    array-length v6, v1

    if-ge v4, v6, :cond_1

    aget-object v6, v1, v4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 1101
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1103
    :cond_1
    if-nez v5, :cond_2

    array-length v6, p2

    if-ge v4, v6, :cond_2

    .line 1104
    aget-object v5, p2, v4

    .line 1106
    :cond_2
    if-nez v5, :cond_3

    .line 1107
    const-string v5, ""

    .line 1109
    :cond_3
    aput-object v5, v3, v4

    .line 1098
    .end local v5    # "value":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1111
    .end local v4    # "i":I
    :cond_4
    return-object v3
.end method

.method private vt100_parse_process()V
    .locals 2

    .line 1158
    iget-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_state:Lorg/jline/builtins/ScreenTerminal$State;

    sget-object v1, Lorg/jline/builtins/ScreenTerminal$State;->Esc:Lorg/jline/builtins/ScreenTerminal$State;

    if-ne v0, v1, :cond_0

    .line 1159
    iget v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_func:I

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 1292
    :sswitch_0
    invoke-direct {p0}, Lorg/jline/builtins/ScreenTerminal;->esc_G1_1()V

    goto/16 :goto_0

    .line 1289
    :sswitch_1
    invoke-direct {p0}, Lorg/jline/builtins/ScreenTerminal;->esc_G1_0()V

    .line 1290
    goto/16 :goto_0

    .line 1286
    :sswitch_2
    invoke-direct {p0}, Lorg/jline/builtins/ScreenTerminal;->esc_G1_4()V

    .line 1287
    goto/16 :goto_0

    .line 1283
    :sswitch_3
    invoke-direct {p0}, Lorg/jline/builtins/ScreenTerminal;->esc_G1_3()V

    .line 1284
    goto/16 :goto_0

    .line 1280
    :sswitch_4
    invoke-direct {p0}, Lorg/jline/builtins/ScreenTerminal;->esc_G1_2()V

    .line 1281
    goto/16 :goto_0

    .line 1268
    :sswitch_5
    invoke-direct {p0}, Lorg/jline/builtins/ScreenTerminal;->esc_G0_1()V

    .line 1269
    goto/16 :goto_0

    .line 1265
    :sswitch_6
    invoke-direct {p0}, Lorg/jline/builtins/ScreenTerminal;->esc_G0_0()V

    .line 1266
    goto/16 :goto_0

    .line 1277
    :sswitch_7
    invoke-direct {p0}, Lorg/jline/builtins/ScreenTerminal;->esc_G0_4()V

    .line 1278
    goto/16 :goto_0

    .line 1274
    :sswitch_8
    invoke-direct {p0}, Lorg/jline/builtins/ScreenTerminal;->esc_G0_3()V

    .line 1275
    goto/16 :goto_0

    .line 1271
    :sswitch_9
    invoke-direct {p0}, Lorg/jline/builtins/ScreenTerminal;->esc_G0_2()V

    .line 1272
    goto/16 :goto_0

    .line 1262
    :sswitch_a
    invoke-direct {p0}, Lorg/jline/builtins/ScreenTerminal;->esc_DECALN()V

    .line 1263
    goto/16 :goto_0

    .line 1260
    :sswitch_b
    goto/16 :goto_0

    .line 1258
    :sswitch_c
    goto/16 :goto_0

    .line 1256
    :sswitch_d
    goto/16 :goto_0

    .line 1254
    :sswitch_e
    goto/16 :goto_0

    .line 1252
    :sswitch_f
    goto/16 :goto_0

    .line 1250
    :sswitch_10
    goto/16 :goto_0

    .line 1248
    :sswitch_11
    goto/16 :goto_0

    .line 1245
    :sswitch_12
    invoke-direct {p0}, Lorg/jline/builtins/ScreenTerminal;->esc_RIS()V

    .line 1246
    goto/16 :goto_0

    .line 1243
    :sswitch_13
    goto/16 :goto_0

    .line 1241
    :sswitch_14
    goto/16 :goto_0

    .line 1239
    :sswitch_15
    goto/16 :goto_0

    .line 1236
    :sswitch_16
    invoke-direct {p0}, Lorg/jline/builtins/ScreenTerminal;->esc_APC()V

    .line 1237
    goto/16 :goto_0

    .line 1233
    :sswitch_17
    invoke-direct {p0}, Lorg/jline/builtins/ScreenTerminal;->esc_PM()V

    .line 1234
    goto/16 :goto_0

    .line 1230
    :sswitch_18
    invoke-direct {p0}, Lorg/jline/builtins/ScreenTerminal;->esc_OSC()V

    .line 1231
    goto :goto_0

    .line 1227
    :sswitch_19
    invoke-direct {p0}, Lorg/jline/builtins/ScreenTerminal;->esc_ST()V

    .line 1228
    goto :goto_0

    .line 1224
    :sswitch_1a
    invoke-direct {p0}, Lorg/jline/builtins/ScreenTerminal;->esc_CSI()V

    .line 1225
    goto :goto_0

    .line 1222
    :sswitch_1b
    goto :goto_0

    .line 1219
    :sswitch_1c
    invoke-direct {p0}, Lorg/jline/builtins/ScreenTerminal;->esc_SOS()V

    .line 1220
    goto :goto_0

    .line 1217
    :sswitch_1d
    goto :goto_0

    .line 1215
    :sswitch_1e
    goto :goto_0

    .line 1213
    :sswitch_1f
    goto :goto_0

    .line 1211
    :sswitch_20
    goto :goto_0

    .line 1209
    :sswitch_21
    goto :goto_0

    .line 1207
    :sswitch_22
    goto :goto_0

    .line 1205
    :sswitch_23
    goto :goto_0

    .line 1202
    :sswitch_24
    invoke-direct {p0}, Lorg/jline/builtins/ScreenTerminal;->esc_DCS()V

    .line 1203
    goto :goto_0

    .line 1199
    :sswitch_25
    invoke-direct {p0}, Lorg/jline/builtins/ScreenTerminal;->esc_SS3()V

    .line 1200
    goto :goto_0

    .line 1196
    :sswitch_26
    invoke-direct {p0}, Lorg/jline/builtins/ScreenTerminal;->esc_SS2()V

    .line 1197
    goto :goto_0

    .line 1193
    :sswitch_27
    invoke-direct {p0}, Lorg/jline/builtins/ScreenTerminal;->esc_RI()V

    .line 1194
    goto :goto_0

    .line 1191
    :sswitch_28
    goto :goto_0

    .line 1189
    :sswitch_29
    goto :goto_0

    .line 1187
    :sswitch_2a
    goto :goto_0

    .line 1185
    :sswitch_2b
    goto :goto_0

    .line 1182
    :sswitch_2c
    invoke-direct {p0}, Lorg/jline/builtins/ScreenTerminal;->esc_HTS()V

    .line 1183
    goto :goto_0

    .line 1179
    :sswitch_2d
    invoke-direct {p0}, Lorg/jline/builtins/ScreenTerminal;->esc_NEL()V

    .line 1180
    goto :goto_0

    .line 1176
    :sswitch_2e
    invoke-direct {p0}, Lorg/jline/builtins/ScreenTerminal;->esc_NEL()V

    .line 1177
    goto :goto_0

    .line 1173
    :sswitch_2f
    invoke-direct {p0}, Lorg/jline/builtins/ScreenTerminal;->esc_IND()V

    .line 1174
    goto :goto_0

    .line 1171
    :sswitch_30
    goto :goto_0

    .line 1169
    :sswitch_31
    goto :goto_0

    .line 1166
    :sswitch_32
    invoke-direct {p0}, Lorg/jline/builtins/ScreenTerminal;->esc_DECRC()V

    .line 1167
    goto :goto_0

    .line 1163
    :sswitch_33
    invoke-direct {p0}, Lorg/jline/builtins/ScreenTerminal;->esc_DECSC()V

    .line 1164
    goto :goto_0

    .line 1161
    :sswitch_34
    nop

    .line 1295
    :goto_0
    iget-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_state:Lorg/jline/builtins/ScreenTerminal$State;

    sget-object v1, Lorg/jline/builtins/ScreenTerminal$State;->Esc:Lorg/jline/builtins/ScreenTerminal$State;

    if-ne v0, v1, :cond_1

    .line 1296
    invoke-direct {p0}, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_reset()V

    goto/16 :goto_2

    .line 1299
    :cond_0
    iget v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_func:I

    sparse-switch v0, :sswitch_data_1

    goto/16 :goto_1

    .line 1530
    :sswitch_35
    goto/16 :goto_1

    .line 1527
    :sswitch_36
    iget-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_param:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/jline/builtins/ScreenTerminal;->csi_DECSTR(Ljava/lang/String;)V

    .line 1528
    goto/16 :goto_1

    .line 1525
    :sswitch_37
    goto/16 :goto_1

    .line 1523
    :sswitch_38
    goto/16 :goto_1

    .line 1521
    :sswitch_39
    goto/16 :goto_1

    .line 1519
    :sswitch_3a
    goto/16 :goto_1

    .line 1517
    :sswitch_3b
    goto/16 :goto_1

    .line 1515
    :sswitch_3c
    goto/16 :goto_1

    .line 1513
    :sswitch_3d
    goto/16 :goto_1

    .line 1511
    :sswitch_3e
    goto/16 :goto_1

    .line 1509
    :sswitch_3f
    goto/16 :goto_1

    .line 1507
    :sswitch_40
    goto/16 :goto_1

    .line 1505
    :sswitch_41
    goto/16 :goto_1

    .line 1503
    :sswitch_42
    goto/16 :goto_1

    .line 1501
    :sswitch_43
    goto/16 :goto_1

    .line 1499
    :sswitch_44
    goto/16 :goto_1

    .line 1497
    :sswitch_45
    goto/16 :goto_1

    .line 1495
    :sswitch_46
    goto/16 :goto_1

    .line 1493
    :sswitch_47
    goto/16 :goto_1

    .line 1491
    :sswitch_48
    goto/16 :goto_1

    .line 1489
    :sswitch_49
    goto/16 :goto_1

    .line 1487
    :sswitch_4a
    goto/16 :goto_1

    .line 1485
    :sswitch_4b
    goto/16 :goto_1

    .line 1483
    :sswitch_4c
    goto/16 :goto_1

    .line 1481
    :sswitch_4d
    goto/16 :goto_1

    .line 1479
    :sswitch_4e
    goto/16 :goto_1

    .line 1477
    :sswitch_4f
    goto/16 :goto_1

    .line 1475
    :sswitch_50
    goto/16 :goto_1

    .line 1473
    :sswitch_51
    goto/16 :goto_1

    .line 1471
    :sswitch_52
    goto/16 :goto_1

    .line 1469
    :sswitch_53
    goto/16 :goto_1

    .line 1467
    :sswitch_54
    goto/16 :goto_1

    .line 1465
    :sswitch_55
    goto/16 :goto_1

    .line 1463
    :sswitch_56
    goto/16 :goto_1

    .line 1461
    :sswitch_57
    goto/16 :goto_1

    .line 1459
    :sswitch_58
    goto/16 :goto_1

    .line 1457
    :sswitch_59
    goto/16 :goto_1

    .line 1455
    :sswitch_5a
    goto/16 :goto_1

    .line 1453
    :sswitch_5b
    goto/16 :goto_1

    .line 1451
    :sswitch_5c
    goto/16 :goto_1

    .line 1449
    :sswitch_5d
    goto/16 :goto_1

    .line 1447
    :sswitch_5e
    goto/16 :goto_1

    .line 1445
    :sswitch_5f
    goto/16 :goto_1

    .line 1443
    :sswitch_60
    goto/16 :goto_1

    .line 1441
    :sswitch_61
    goto/16 :goto_1

    .line 1439
    :sswitch_62
    goto/16 :goto_1

    .line 1436
    :sswitch_63
    iget-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_param:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/jline/builtins/ScreenTerminal;->csi_DECREQTPARM(Ljava/lang/String;)V

    .line 1437
    goto/16 :goto_1

    .line 1433
    :sswitch_64
    iget-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_param:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/jline/builtins/ScreenTerminal;->csi_RCP(Ljava/lang/String;)V

    .line 1434
    goto/16 :goto_1

    .line 1430
    :sswitch_65
    iget-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_param:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/jline/builtins/ScreenTerminal;->csi_SCP(Ljava/lang/String;)V

    .line 1431
    goto/16 :goto_1

    .line 1427
    :sswitch_66
    iget-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_param:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/jline/builtins/ScreenTerminal;->csi_DECSTBM(Ljava/lang/String;)V

    .line 1428
    goto/16 :goto_1

    .line 1425
    :sswitch_67
    goto/16 :goto_1

    .line 1422
    :sswitch_68
    iget-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_param:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/jline/builtins/ScreenTerminal;->csi_DSR(Ljava/lang/String;)V

    .line 1423
    goto/16 :goto_1

    .line 1419
    :sswitch_69
    iget-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_param:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/jline/builtins/ScreenTerminal;->csi_SGR(Ljava/lang/String;)V

    .line 1420
    goto/16 :goto_1

    .line 1416
    :sswitch_6a
    iget-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_param:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/jline/builtins/ScreenTerminal;->csi_RM(Ljava/lang/String;)V

    .line 1417
    goto/16 :goto_1

    .line 1414
    :sswitch_6b
    goto/16 :goto_1

    .line 1412
    :sswitch_6c
    goto/16 :goto_1

    .line 1410
    :sswitch_6d
    goto/16 :goto_1

    .line 1407
    :sswitch_6e
    iget-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_param:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/jline/builtins/ScreenTerminal;->csi_SM(Ljava/lang/String;)V

    .line 1408
    goto/16 :goto_1

    .line 1404
    :sswitch_6f
    iget-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_param:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/jline/builtins/ScreenTerminal;->csi_TBC(Ljava/lang/String;)V

    .line 1405
    goto/16 :goto_1

    .line 1401
    :sswitch_70
    iget-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_param:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/jline/builtins/ScreenTerminal;->csi_HVP(Ljava/lang/String;)V

    .line 1402
    goto/16 :goto_1

    .line 1398
    :sswitch_71
    iget-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_param:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/jline/builtins/ScreenTerminal;->csi_VPR(Ljava/lang/String;)V

    .line 1399
    goto/16 :goto_1

    .line 1395
    :sswitch_72
    iget-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_param:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/jline/builtins/ScreenTerminal;->csi_VPA(Ljava/lang/String;)V

    .line 1396
    goto/16 :goto_1

    .line 1392
    :sswitch_73
    iget-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_param:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/jline/builtins/ScreenTerminal;->csi_DA(Ljava/lang/String;)V

    .line 1393
    goto/16 :goto_1

    .line 1389
    :sswitch_74
    iget-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_param:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/jline/builtins/ScreenTerminal;->csi_REP(Ljava/lang/String;)V

    .line 1390
    goto/16 :goto_1

    .line 1386
    :sswitch_75
    iget-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_param:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/jline/builtins/ScreenTerminal;->csi_HPR(Ljava/lang/String;)V

    .line 1387
    goto/16 :goto_1

    .line 1383
    :sswitch_76
    iget-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_param:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/jline/builtins/ScreenTerminal;->csi_HPA(Ljava/lang/String;)V

    .line 1384
    goto/16 :goto_1

    .line 1381
    :sswitch_77
    goto/16 :goto_1

    .line 1379
    :sswitch_78
    goto/16 :goto_1

    .line 1377
    :sswitch_79
    goto/16 :goto_1

    .line 1375
    :sswitch_7a
    goto/16 :goto_1

    .line 1372
    :sswitch_7b
    iget-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_param:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/jline/builtins/ScreenTerminal;->csi_CBT(Ljava/lang/String;)V

    .line 1373
    goto/16 :goto_1

    .line 1370
    :sswitch_7c
    goto/16 :goto_1

    .line 1367
    :sswitch_7d
    iget-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_param:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/jline/builtins/ScreenTerminal;->csi_ECH(Ljava/lang/String;)V

    .line 1368
    goto/16 :goto_1

    .line 1364
    :sswitch_7e
    iget-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_param:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/jline/builtins/ScreenTerminal;->csi_CTC(Ljava/lang/String;)V

    .line 1365
    goto/16 :goto_1

    .line 1362
    :sswitch_7f
    goto/16 :goto_1

    .line 1360
    :sswitch_80
    goto/16 :goto_1

    .line 1357
    :sswitch_81
    iget-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_param:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/jline/builtins/ScreenTerminal;->csi_SD(Ljava/lang/String;)V

    .line 1358
    goto/16 :goto_1

    .line 1354
    :sswitch_82
    iget-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_param:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/jline/builtins/ScreenTerminal;->csi_SU(Ljava/lang/String;)V

    .line 1355
    goto/16 :goto_1

    .line 1352
    :sswitch_83
    goto/16 :goto_1

    .line 1350
    :sswitch_84
    goto :goto_1

    .line 1347
    :sswitch_85
    iget-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_param:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/jline/builtins/ScreenTerminal;->csi_DCH(Ljava/lang/String;)V

    .line 1348
    goto :goto_1

    .line 1345
    :sswitch_86
    goto :goto_1

    .line 1343
    :sswitch_87
    goto :goto_1

    .line 1340
    :sswitch_88
    iget-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_param:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/jline/builtins/ScreenTerminal;->csi_DL(Ljava/lang/String;)V

    .line 1341
    goto :goto_1

    .line 1337
    :sswitch_89
    iget-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_param:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/jline/builtins/ScreenTerminal;->csi_IL(Ljava/lang/String;)V

    .line 1338
    goto :goto_1

    .line 1334
    :sswitch_8a
    iget-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_param:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/jline/builtins/ScreenTerminal;->csi_EL(Ljava/lang/String;)V

    .line 1335
    goto :goto_1

    .line 1331
    :sswitch_8b
    iget-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_param:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/jline/builtins/ScreenTerminal;->csi_ED(Ljava/lang/String;)V

    .line 1332
    goto :goto_1

    .line 1328
    :sswitch_8c
    iget-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_param:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/jline/builtins/ScreenTerminal;->csi_CHT(Ljava/lang/String;)V

    .line 1329
    goto :goto_1

    .line 1325
    :sswitch_8d
    iget-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_param:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/jline/builtins/ScreenTerminal;->csi_CUP(Ljava/lang/String;)V

    .line 1326
    goto :goto_1

    .line 1322
    :sswitch_8e
    iget-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_param:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/jline/builtins/ScreenTerminal;->csi_CHA(Ljava/lang/String;)V

    .line 1323
    goto :goto_1

    .line 1319
    :sswitch_8f
    iget-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_param:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/jline/builtins/ScreenTerminal;->csi_CPL(Ljava/lang/String;)V

    .line 1320
    goto :goto_1

    .line 1316
    :sswitch_90
    iget-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_param:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/jline/builtins/ScreenTerminal;->csi_CNL(Ljava/lang/String;)V

    .line 1317
    goto :goto_1

    .line 1313
    :sswitch_91
    iget-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_param:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/jline/builtins/ScreenTerminal;->csi_CUB(Ljava/lang/String;)V

    .line 1314
    goto :goto_1

    .line 1310
    :sswitch_92
    iget-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_param:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/jline/builtins/ScreenTerminal;->csi_CUF(Ljava/lang/String;)V

    .line 1311
    goto :goto_1

    .line 1307
    :sswitch_93
    iget-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_param:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/jline/builtins/ScreenTerminal;->csi_CUD(Ljava/lang/String;)V

    .line 1308
    goto :goto_1

    .line 1304
    :sswitch_94
    iget-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_param:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/jline/builtins/ScreenTerminal;->csi_CUU(Ljava/lang/String;)V

    .line 1305
    goto :goto_1

    .line 1301
    :sswitch_95
    iget-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_param:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/jline/builtins/ScreenTerminal;->csi_ICH(Ljava/lang/String;)V

    .line 1302
    nop

    .line 1534
    :goto_1
    iget-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_state:Lorg/jline/builtins/ScreenTerminal$State;

    sget-object v1, Lorg/jline/builtins/ScreenTerminal$State;->Csi:Lorg/jline/builtins/ScreenTerminal$State;

    if-ne v0, v1, :cond_1

    .line 1535
    invoke-direct {p0}, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_reset()V

    .line 1538
    :cond_1
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x36 -> :sswitch_34
        0x37 -> :sswitch_33
        0x38 -> :sswitch_32
        0x42 -> :sswitch_31
        0x43 -> :sswitch_30
        0x44 -> :sswitch_2f
        0x45 -> :sswitch_2e
        0x46 -> :sswitch_2d
        0x48 -> :sswitch_2c
        0x49 -> :sswitch_2b
        0x4a -> :sswitch_2a
        0x4b -> :sswitch_29
        0x4c -> :sswitch_28
        0x4d -> :sswitch_27
        0x4e -> :sswitch_26
        0x4f -> :sswitch_25
        0x50 -> :sswitch_24
        0x51 -> :sswitch_23
        0x52 -> :sswitch_22
        0x53 -> :sswitch_21
        0x54 -> :sswitch_20
        0x55 -> :sswitch_1f
        0x56 -> :sswitch_1e
        0x57 -> :sswitch_1d
        0x58 -> :sswitch_1c
        0x5a -> :sswitch_1b
        0x5b -> :sswitch_1a
        0x5c -> :sswitch_19
        0x5d -> :sswitch_18
        0x5e -> :sswitch_17
        0x5f -> :sswitch_16
        0x60 -> :sswitch_15
        0x61 -> :sswitch_14
        0x62 -> :sswitch_13
        0x63 -> :sswitch_12
        0x64 -> :sswitch_11
        0x6c -> :sswitch_10
        0x6e -> :sswitch_f
        0x6f -> :sswitch_e
        0x7c -> :sswitch_d
        0x7d -> :sswitch_c
        0x7e -> :sswitch_b
        0x2338 -> :sswitch_a
        0x2830 -> :sswitch_9
        0x2831 -> :sswitch_8
        0x2832 -> :sswitch_7
        0x2841 -> :sswitch_6
        0x2842 -> :sswitch_5
        0x2930 -> :sswitch_4
        0x2931 -> :sswitch_3
        0x2932 -> :sswitch_2
        0x2941 -> :sswitch_1
        0x2942 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x40 -> :sswitch_95
        0x41 -> :sswitch_94
        0x42 -> :sswitch_93
        0x43 -> :sswitch_92
        0x44 -> :sswitch_91
        0x45 -> :sswitch_90
        0x46 -> :sswitch_8f
        0x47 -> :sswitch_8e
        0x48 -> :sswitch_8d
        0x49 -> :sswitch_8c
        0x4a -> :sswitch_8b
        0x4b -> :sswitch_8a
        0x4c -> :sswitch_89
        0x4d -> :sswitch_88
        0x4e -> :sswitch_87
        0x4f -> :sswitch_86
        0x50 -> :sswitch_85
        0x51 -> :sswitch_84
        0x52 -> :sswitch_83
        0x53 -> :sswitch_82
        0x54 -> :sswitch_81
        0x55 -> :sswitch_80
        0x56 -> :sswitch_7f
        0x57 -> :sswitch_7e
        0x58 -> :sswitch_7d
        0x59 -> :sswitch_7c
        0x5a -> :sswitch_7b
        0x5b -> :sswitch_7a
        0x5c -> :sswitch_79
        0x5d -> :sswitch_78
        0x5e -> :sswitch_77
        0x60 -> :sswitch_76
        0x61 -> :sswitch_75
        0x62 -> :sswitch_74
        0x63 -> :sswitch_73
        0x64 -> :sswitch_72
        0x65 -> :sswitch_71
        0x66 -> :sswitch_70
        0x67 -> :sswitch_6f
        0x68 -> :sswitch_6e
        0x69 -> :sswitch_6d
        0x6a -> :sswitch_6c
        0x6b -> :sswitch_6b
        0x6c -> :sswitch_6a
        0x6d -> :sswitch_69
        0x6e -> :sswitch_68
        0x6f -> :sswitch_67
        0x72 -> :sswitch_66
        0x73 -> :sswitch_65
        0x75 -> :sswitch_64
        0x78 -> :sswitch_63
        0x2040 -> :sswitch_62
        0x2041 -> :sswitch_61
        0x2042 -> :sswitch_60
        0x2043 -> :sswitch_5f
        0x2044 -> :sswitch_5e
        0x2045 -> :sswitch_5d
        0x2046 -> :sswitch_5c
        0x2047 -> :sswitch_5b
        0x2048 -> :sswitch_5a
        0x2049 -> :sswitch_59
        0x204a -> :sswitch_58
        0x204b -> :sswitch_57
        0x204c -> :sswitch_56
        0x204d -> :sswitch_55
        0x204e -> :sswitch_54
        0x204f -> :sswitch_53
        0x2050 -> :sswitch_52
        0x2051 -> :sswitch_51
        0x2052 -> :sswitch_50
        0x2053 -> :sswitch_4f
        0x2054 -> :sswitch_4e
        0x2055 -> :sswitch_4d
        0x2056 -> :sswitch_4c
        0x2057 -> :sswitch_4b
        0x2058 -> :sswitch_4a
        0x2059 -> :sswitch_49
        0x205a -> :sswitch_48
        0x205b -> :sswitch_47
        0x205c -> :sswitch_46
        0x205d -> :sswitch_45
        0x205e -> :sswitch_44
        0x205f -> :sswitch_43
        0x2060 -> :sswitch_42
        0x2061 -> :sswitch_41
        0x2062 -> :sswitch_40
        0x2063 -> :sswitch_3f
        0x2064 -> :sswitch_3e
        0x2065 -> :sswitch_3d
        0x2066 -> :sswitch_3c
        0x2067 -> :sswitch_3b
        0x2068 -> :sswitch_3a
        0x2069 -> :sswitch_39
        0x206a -> :sswitch_38
        0x206b -> :sswitch_37
        0x2170 -> :sswitch_36
        0x2472 -> :sswitch_35
    .end sparse-switch
.end method

.method private vt100_parse_reset()V
    .locals 1

    .line 1147
    sget-object v0, Lorg/jline/builtins/ScreenTerminal$State;->None:Lorg/jline/builtins/ScreenTerminal$State;

    invoke-direct {p0, v0}, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_reset(Lorg/jline/builtins/ScreenTerminal$State;)V

    .line 1148
    return-void
.end method

.method private vt100_parse_reset(Lorg/jline/builtins/ScreenTerminal$State;)V
    .locals 1
    .param p1, "state"    # Lorg/jline/builtins/ScreenTerminal$State;

    .line 1151
    iput-object p1, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_state:Lorg/jline/builtins/ScreenTerminal$State;

    .line 1152
    const/4 v0, 0x0

    iput v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_len:I

    .line 1153
    iput v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_func:I

    .line 1154
    const-string v0, ""

    iput-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_param:Ljava/lang/String;

    .line 1155
    return-void
.end method

.method private vt100_setmode(Ljava/lang/String;Z)V
    .locals 10
    .param p1, "p"    # Ljava/lang/String;
    .param p2, "state"    # Z

    .line 520
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_params(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 521
    .local v1, "ps":[Ljava/lang/String;
    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_7

    aget-object v4, v1, v3

    .line 525
    .local v4, "m":Ljava/lang/String;
    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x1

    sparse-switch v6, :sswitch_data_0

    :cond_0
    goto/16 :goto_1

    :sswitch_0
    const-string v6, "?1049"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x9

    goto/16 :goto_1

    :sswitch_1
    const-string v6, "?67"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0xa

    goto :goto_1

    :sswitch_2
    const-string v6, "?40"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x8

    goto :goto_1

    :sswitch_3
    const-string v6, "?25"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x7

    goto :goto_1

    :sswitch_4
    const-string v6, "?7"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x6

    goto :goto_1

    :sswitch_5
    const-string v6, "?6"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x5

    goto :goto_1

    :sswitch_6
    const-string v6, "?5"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x4

    goto :goto_1

    :sswitch_7
    const-string v6, "?3"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x3

    goto :goto_1

    :sswitch_8
    const-string v6, "?1"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x2

    goto :goto_1

    :sswitch_9
    const-string v6, "20"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v7

    goto :goto_1

    :sswitch_a
    const-string v6, "4"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v0

    :goto_1
    packed-switch v5, :pswitch_data_0

    goto/16 :goto_3

    .line 618
    :pswitch_0
    iput-boolean p2, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_mode_backspace:Z

    goto/16 :goto_3

    .line 598
    :pswitch_1
    if-eqz p2, :cond_1

    iget-boolean v5, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_mode_alt_screen:Z

    if-eqz v5, :cond_2

    :cond_1
    if-nez p2, :cond_3

    iget-boolean v5, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_mode_alt_screen:Z

    if-eqz v5, :cond_3

    .line 599
    :cond_2
    iget-object v5, p0, Lorg/jline/builtins/ScreenTerminal;->screen:[[J

    .line 600
    .local v5, "s":[[J
    iget-object v6, p0, Lorg/jline/builtins/ScreenTerminal;->screen2:[[J

    iput-object v6, p0, Lorg/jline/builtins/ScreenTerminal;->screen:[[J

    .line 601
    iput-object v5, p0, Lorg/jline/builtins/ScreenTerminal;->screen2:[[J

    .line 602
    iget-object v6, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_saved:Ljava/util/Map;

    .line 603
    .local v6, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v8, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_saved2:Ljava/util/Map;

    iput-object v8, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_saved:Ljava/util/Map;

    .line 604
    iput-object v6, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_saved2:Ljava/util/Map;

    .line 606
    iget v8, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_alternate_saved_cx:I

    .line 607
    .local v8, "c":I
    iget v9, p0, Lorg/jline/builtins/ScreenTerminal;->cx:I

    iput v9, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_alternate_saved_cx:I

    .line 608
    iget v9, p0, Lorg/jline/builtins/ScreenTerminal;->width:I

    sub-int/2addr v9, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    iput v9, p0, Lorg/jline/builtins/ScreenTerminal;->cx:I

    .line 609
    iget v8, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_alternate_saved_cy:I

    .line 610
    iget v9, p0, Lorg/jline/builtins/ScreenTerminal;->cy:I

    iput v9, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_alternate_saved_cy:I

    .line 611
    iget v9, p0, Lorg/jline/builtins/ScreenTerminal;->height:I

    sub-int/2addr v9, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, p0, Lorg/jline/builtins/ScreenTerminal;->cy:I

    .line 613
    .end local v5    # "s":[[J
    .end local v6    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v8    # "c":I
    :cond_3
    iput-boolean p2, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_mode_alt_screen:Z

    .line 614
    goto :goto_3

    .line 593
    :pswitch_2
    iput-boolean p2, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_mode_column_switch:Z

    .line 594
    goto :goto_3

    .line 586
    :pswitch_3
    iput-boolean p2, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_mode_cursor:Z

    .line 587
    goto :goto_3

    .line 578
    :pswitch_4
    iput-boolean p2, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_mode_autowrap:Z

    .line 579
    goto :goto_3

    .line 569
    :pswitch_5
    iput-boolean p2, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_mode_origin:Z

    .line 570
    if-eqz p2, :cond_4

    .line 571
    iget v5, p0, Lorg/jline/builtins/ScreenTerminal;->scroll_area_y0:I

    invoke-direct {p0, v5, v0}, Lorg/jline/builtins/ScreenTerminal;->cursor_set(II)V

    goto :goto_3

    .line 573
    :cond_4
    invoke-direct {p0, v0, v0}, Lorg/jline/builtins/ScreenTerminal;->cursor_set(II)V

    .line 575
    goto :goto_3

    .line 565
    :pswitch_6
    iput-boolean p2, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_mode_inverse:Z

    .line 566
    goto :goto_3

    .line 553
    :pswitch_7
    iget-boolean v5, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_mode_column_switch:Z

    if-eqz v5, :cond_6

    .line 554
    if-eqz p2, :cond_5

    .line 555
    const/16 v5, 0x84

    iput v5, p0, Lorg/jline/builtins/ScreenTerminal;->width:I

    goto :goto_2

    .line 557
    :cond_5
    const/16 v5, 0x50

    iput v5, p0, Lorg/jline/builtins/ScreenTerminal;->width:I

    .line 559
    :goto_2
    invoke-direct {p0}, Lorg/jline/builtins/ScreenTerminal;->reset_screen()V

    goto :goto_3

    .line 548
    :pswitch_8
    iput-boolean p2, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_mode_cursorkey:Z

    .line 549
    goto :goto_3

    .line 544
    :pswitch_9
    iput-boolean p2, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_mode_lfnewline:Z

    .line 545
    goto :goto_3

    .line 528
    :pswitch_a
    iput-boolean p2, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_mode_insert:Z

    .line 529
    nop

    .line 521
    .end local v4    # "m":Ljava/lang/String;
    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 625
    :cond_7
    return-void

    :sswitch_data_0
    .sparse-switch
        0x34 -> :sswitch_a
        0x63e -> :sswitch_9
        0x7d2 -> :sswitch_8
        0x7d4 -> :sswitch_7
        0x7d6 -> :sswitch_6
        0x7d7 -> :sswitch_5
        0x7d8 -> :sswitch_4
        0xf2c2 -> :sswitch_3
        0xf2fb -> :sswitch_2
        0xf340 -> :sswitch_1
        0x38ec9a3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private vt100_write(I)Z
    .locals 7
    .param p1, "c"    # I

    .line 1541
    const/16 v0, 0x20

    const/4 v1, 0x1

    if-ge p1, v0, :cond_2

    .line 1542
    const/16 v2, 0x1b

    if-ne p1, v2, :cond_0

    .line 1543
    sget-object v0, Lorg/jline/builtins/ScreenTerminal$State;->Esc:Lorg/jline/builtins/ScreenTerminal$State;

    invoke-direct {p0, v0}, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_reset(Lorg/jline/builtins/ScreenTerminal$State;)V

    .line 1544
    return v1

    .line 1545
    :cond_0
    const/16 v2, 0xe

    if-ne p1, v2, :cond_1

    .line 1546
    invoke-direct {p0}, Lorg/jline/builtins/ScreenTerminal;->ctrl_SO()V

    goto :goto_0

    .line 1547
    :cond_1
    const/16 v2, 0xf

    if-ne p1, v2, :cond_3

    .line 1548
    invoke-direct {p0}, Lorg/jline/builtins/ScreenTerminal;->ctrl_SI()V

    goto :goto_0

    .line 1550
    :cond_2
    const v2, 0xffe0

    and-int/2addr v2, p1

    const/16 v3, 0x80

    if-ne v2, v3, :cond_3

    .line 1551
    sget-object v0, Lorg/jline/builtins/ScreenTerminal$State;->Esc:Lorg/jline/builtins/ScreenTerminal$State;

    invoke-direct {p0, v0}, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_reset(Lorg/jline/builtins/ScreenTerminal$State;)V

    .line 1552
    add-int/lit8 v0, p1, -0x40

    int-to-char v0, v0

    iput v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_func:I

    .line 1553
    invoke-direct {p0}, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_process()V

    .line 1554
    return v1

    .line 1556
    :cond_3
    :goto_0
    iget-object v2, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_state:Lorg/jline/builtins/ScreenTerminal$State;

    sget-object v3, Lorg/jline/builtins/ScreenTerminal$State;->None:Lorg/jline/builtins/ScreenTerminal$State;

    const/4 v4, 0x0

    if-eq v2, v3, :cond_b

    .line 1557
    iget-object v2, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_state:Lorg/jline/builtins/ScreenTerminal$State;

    sget-object v3, Lorg/jline/builtins/ScreenTerminal$State;->Str:Lorg/jline/builtins/ScreenTerminal$State;

    if-ne v2, v3, :cond_5

    .line 1558
    if-lt p1, v0, :cond_4

    .line 1559
    return v1

    .line 1561
    :cond_4
    invoke-direct {p0}, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_reset()V

    goto :goto_2

    .line 1563
    :cond_5
    if-ge p1, v0, :cond_7

    .line 1564
    const/16 v0, 0x18

    if-eq p1, v0, :cond_6

    const/16 v0, 0x1a

    if-ne p1, v0, :cond_b

    .line 1565
    :cond_6
    invoke-direct {p0}, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_reset()V

    .line 1566
    return v1

    .line 1569
    :cond_7
    iget v2, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_len:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_len:I

    .line 1570
    if-le v2, v0, :cond_8

    .line 1571
    invoke-direct {p0}, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_reset()V

    goto :goto_2

    .line 1573
    :cond_8
    and-int/lit16 v2, p1, 0xf0

    .line 1574
    .local v2, "msb":I
    if-ne v2, v0, :cond_9

    .line 1575
    iget v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_func:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_func:I

    .line 1576
    int-to-char v3, p1

    add-int/2addr v0, v3

    iput v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_func:I

    goto :goto_1

    .line 1577
    :cond_9
    const/16 v0, 0x30

    if-ne v2, v0, :cond_a

    iget-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_state:Lorg/jline/builtins/ScreenTerminal$State;

    sget-object v3, Lorg/jline/builtins/ScreenTerminal$State;->Csi:Lorg/jline/builtins/ScreenTerminal$State;

    if-ne v0, v3, :cond_a

    .line 1578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_param:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v3, Ljava/lang/String;

    new-array v5, v1, [C

    int-to-char v6, p1

    aput-char v6, v5, v4

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_param:Ljava/lang/String;

    goto :goto_1

    .line 1580
    :cond_a
    iget v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_func:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_func:I

    .line 1581
    int-to-char v3, p1

    add-int/2addr v0, v3

    iput v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_func:I

    .line 1582
    invoke-direct {p0}, Lorg/jline/builtins/ScreenTerminal;->vt100_parse_process()V

    .line 1584
    :goto_1
    return v1

    .line 1589
    .end local v2    # "msb":I
    :cond_b
    :goto_2
    iput p1, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_lastchar:I

    .line 1590
    return v4
.end method


# virtual methods
.method public declared-synchronized dump(JZ)Ljava/lang/String;
    .locals 20
    .param p1, "timeout"    # J
    .param p3, "forceDump"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    .line 1890
    :try_start_0
    iget-object v0, v1, Lorg/jline/builtins/ScreenTerminal;->dirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_0

    .line 1891
    invoke-virtual/range {p0 .. p2}, Ljava/lang/Object;->wait(J)V

    .line 1893
    .end local p0    # "this":Lorg/jline/builtins/ScreenTerminal;
    :cond_0
    iget-object v0, v1, Lorg/jline/builtins/ScreenTerminal;->dirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    if-eqz p3, :cond_1

    goto :goto_0

    .line 1962
    :cond_1
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 1894
    :cond_2
    :goto_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1895
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v4, -0x1

    .line 1896
    .local v4, "prev_attr":I
    iget v5, v1, Lorg/jline/builtins/ScreenTerminal;->cx:I

    iget v6, v1, Lorg/jline/builtins/ScreenTerminal;->width:I

    sub-int/2addr v6, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1897
    .local v5, "cx":I
    iget v6, v1, Lorg/jline/builtins/ScreenTerminal;->cy:I

    .line 1898
    .local v6, "cy":I
    const-string v7, "<div><pre class=\'term\'>"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1899
    const/4 v7, 0x0

    .local v7, "y":I
    :goto_1
    iget v8, v1, Lorg/jline/builtins/ScreenTerminal;->height:I

    if-ge v7, v8, :cond_f

    .line 1900
    const/4 v8, 0x0

    .line 1901
    .local v8, "wx":I
    const/4 v9, 0x0

    .local v9, "x":I
    :goto_2
    iget v10, v1, Lorg/jline/builtins/ScreenTerminal;->width:I

    if-ge v9, v10, :cond_e

    .line 1902
    iget-object v10, v1, Lorg/jline/builtins/ScreenTerminal;->screen:[[J

    aget-object v10, v10, v7

    aget-wide v10, v10, v9

    .line 1903
    .local v10, "d":J
    const-wide/16 v12, -0x1

    and-long/2addr v12, v10

    long-to-int v12, v12

    .line 1904
    .local v12, "c":I
    const/16 v13, 0x20

    shr-long v13, v10, v13

    long-to-int v13, v13

    .line 1905
    .local v13, "a":I
    if-ne v6, v7, :cond_3

    if-ne v5, v9, :cond_3

    iget-boolean v14, v1, Lorg/jline/builtins/ScreenTerminal;->vt100_mode_cursor:Z

    if-eqz v14, :cond_3

    .line 1906
    const v14, 0xfff0

    and-int/2addr v14, v13

    or-int/lit8 v13, v14, 0xc

    .line 1908
    :cond_3
    if-eq v13, v4, :cond_c

    .line 1909
    const/4 v14, -0x1

    if-eq v4, v14, :cond_4

    .line 1910
    const-string v14, "</span>"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1912
    :cond_4
    and-int/lit16 v14, v13, 0xff

    .line 1913
    .local v14, "bg":I
    const v15, 0xff00

    and-int/2addr v15, v13

    shr-int/lit8 v15, v15, 0x8

    .line 1914
    .local v15, "fg":I
    const/high16 v16, 0x20000

    and-int v16, v13, v16

    if-eqz v16, :cond_5

    move/from16 v16, v3

    goto :goto_3

    :cond_5
    move/from16 v16, v2

    .line 1915
    .local v16, "inv":Z
    :goto_3
    iget-boolean v2, v1, Lorg/jline/builtins/ScreenTerminal;->vt100_mode_inverse:Z

    .line 1916
    .local v2, "inv2":Z
    if-eqz v16, :cond_6

    if-eqz v2, :cond_7

    :cond_6
    if-eqz v2, :cond_8

    if-nez v16, :cond_8

    .line 1917
    :cond_7
    move/from16 v17, v15

    .line 1918
    .local v17, "i":I
    move v15, v14

    .line 1919
    move/from16 v14, v17

    .line 1921
    .end local v17    # "i":I
    :cond_8
    const/high16 v17, 0x40000

    and-int v17, v13, v17

    if-eqz v17, :cond_9

    .line 1922
    const/16 v15, 0xc

    .line 1925
    :cond_9
    const/high16 v17, 0x10000

    and-int v17, v13, v17

    if-eqz v17, :cond_a

    .line 1926
    const-string v17, " ul"

    move-object/from16 v3, v17

    .local v17, "ul":Ljava/lang/String;
    goto :goto_4

    .line 1928
    .end local v17    # "ul":Ljava/lang/String;
    :cond_a
    const-string v17, ""

    move-object/from16 v3, v17

    .line 1931
    .local v3, "ul":Ljava/lang/String;
    :goto_4
    const/high16 v17, 0x80000

    and-int v17, v13, v17

    if-eqz v17, :cond_b

    .line 1932
    const-string v17, " b"

    move/from16 v18, v2

    move-object/from16 v2, v17

    .local v17, "b":Ljava/lang/String;
    goto :goto_5

    .line 1934
    .end local v17    # "b":Ljava/lang/String;
    :cond_b
    const-string v17, ""

    move/from16 v18, v2

    move-object/from16 v2, v17

    .line 1936
    .local v2, "b":Ljava/lang/String;
    .local v18, "inv2":Z
    :goto_5
    move/from16 v17, v4

    .end local v4    # "prev_attr":I
    .local v17, "prev_attr":I
    const-string v4, "<span class=\'f"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v19, v5

    .end local v5    # "cx":I
    .local v19, "cx":I
    const-string v5, " b"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1937
    move v4, v13

    .end local v17    # "prev_attr":I
    .restart local v4    # "prev_attr":I
    goto :goto_6

    .line 1908
    .end local v2    # "b":Ljava/lang/String;
    .end local v3    # "ul":Ljava/lang/String;
    .end local v14    # "bg":I
    .end local v15    # "fg":I
    .end local v16    # "inv":Z
    .end local v18    # "inv2":Z
    .end local v19    # "cx":I
    .restart local v5    # "cx":I
    :cond_c
    move/from16 v17, v4

    move/from16 v19, v5

    .line 1939
    .end local v5    # "cx":I
    .restart local v19    # "cx":I
    :goto_6
    sparse-switch v12, :sswitch_data_0

    .line 1950
    invoke-direct {v1, v12}, Lorg/jline/builtins/ScreenTerminal;->utf8_charwidth(I)I

    move-result v2

    goto :goto_7

    .line 1947
    :sswitch_0
    const-string v2, "&gt;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1948
    goto :goto_8

    .line 1944
    :sswitch_1
    const-string v2, "&lt;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1945
    goto :goto_8

    .line 1941
    :sswitch_2
    const-string v2, "&amp;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1942
    goto :goto_8

    .line 1950
    :goto_7
    add-int/2addr v8, v2

    .line 1951
    iget v2, v1, Lorg/jline/builtins/ScreenTerminal;->width:I

    if-gt v8, v2, :cond_d

    .line 1952
    int-to-char v2, v12

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1901
    .end local v10    # "d":J
    .end local v12    # "c":I
    .end local v13    # "a":I
    :cond_d
    :goto_8
    add-int/lit8 v9, v9, 0x1

    move/from16 v5, v19

    const/4 v2, 0x0

    const/4 v3, 0x1

    goto/16 :goto_2

    .end local v19    # "cx":I
    .restart local v5    # "cx":I
    :cond_e
    move/from16 v17, v4

    move/from16 v19, v5

    .line 1957
    .end local v4    # "prev_attr":I
    .end local v5    # "cx":I
    .end local v9    # "x":I
    .restart local v17    # "prev_attr":I
    .restart local v19    # "cx":I
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1899
    nop

    .end local v8    # "wx":I
    add-int/lit8 v7, v7, 0x1

    move/from16 v4, v17

    move/from16 v5, v19

    const/4 v2, 0x0

    const/4 v3, 0x1

    goto/16 :goto_1

    .end local v17    # "prev_attr":I
    .end local v19    # "cx":I
    .restart local v4    # "prev_attr":I
    .restart local v5    # "cx":I
    :cond_f
    move/from16 v19, v5

    .line 1959
    .end local v5    # "cx":I
    .end local v7    # "y":I
    .restart local v19    # "cx":I
    const-string v2, "</span></pre></div>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1960
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v2

    .line 1889
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "prev_attr":I
    .end local v6    # "cy":I
    .end local v19    # "cx":I
    .end local p1    # "timeout":J
    .end local p3    # "forceDump":Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x26 -> :sswitch_2
        0x3c -> :sswitch_1
        0x3e -> :sswitch_0
    .end sparse-switch
.end method

.method public declared-synchronized dump([JIIII[I)V
    .locals 8
    .param p1, "fullscreen"    # [J
    .param p2, "ftop"    # I
    .param p3, "fleft"    # I
    .param p4, "fheight"    # I
    .param p5, "fwidth"    # I
    .param p6, "cursor"    # [I

    monitor-enter p0

    .line 1878
    :try_start_0
    iget v0, p0, Lorg/jline/builtins/ScreenTerminal;->cx:I

    iget v1, p0, Lorg/jline/builtins/ScreenTerminal;->width:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1879
    .local v0, "cx":I
    iget v1, p0, Lorg/jline/builtins/ScreenTerminal;->cy:I

    .line 1880
    .local v1, "cy":I
    const/4 v3, 0x0

    .local v3, "y":I
    :goto_0
    iget v4, p0, Lorg/jline/builtins/ScreenTerminal;->height:I

    sub-int v5, p4, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    if-ge v3, v4, :cond_0

    .line 1881
    iget-object v4, p0, Lorg/jline/builtins/ScreenTerminal;->screen:[[J

    aget-object v4, v4, v3

    add-int v6, v3, p2

    mul-int/2addr v6, p5

    add-int/2addr v6, p3

    iget v7, p0, Lorg/jline/builtins/ScreenTerminal;->width:I

    invoke-static {v4, v5, p1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1880
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1883
    .end local v3    # "y":I
    .end local p0    # "this":Lorg/jline/builtins/ScreenTerminal;
    :cond_0
    if-eqz p6, :cond_1

    .line 1884
    add-int v3, v0, p3

    aput v3, p6, v5

    .line 1885
    add-int v3, v1, p2

    aput v3, p6, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1887
    :cond_1
    monitor-exit p0

    return-void

    .line 1877
    .end local v0    # "cx":I
    .end local v1    # "cy":I
    .end local p1    # "fullscreen":[J
    .end local p2    # "ftop":I
    .end local p3    # "fleft":I
    .end local p4    # "fheight":I
    .end local p5    # "fwidth":I
    .end local p6    # "cursor":[I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isDirty()Z
    .locals 3

    .line 1598
    iget-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->dirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$write$0$org-jline-builtins-ScreenTerminal(I)V
    .locals 1
    .param p1, "c"    # I

    .line 1870
    invoke-direct {p0, p1}, Lorg/jline/builtins/ScreenTerminal;->vt100_write(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lorg/jline/builtins/ScreenTerminal;->dumb_write(I)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0xffff

    if-gt p1, v0, :cond_0

    .line 1871
    invoke-direct {p0, p1}, Lorg/jline/builtins/ScreenTerminal;->dumb_echo(I)V

    .line 1873
    :cond_0
    return-void
.end method

.method public declared-synchronized pipe(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "d"    # Ljava/lang/String;

    monitor-enter p0

    .line 1701
    :try_start_0
    const-string v0, ""

    .line 1702
    .local v0, "o":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_6

    aget-char v5, v1, v4

    .line 1703
    .local v5, "c":C
    iget-boolean v6, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_keyfilter_escape:Z

    if-eqz v6, :cond_1

    .line 1704
    iput-boolean v3, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_keyfilter_escape:Z

    .line 1705
    iget-boolean v6, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_mode_cursorkey:Z

    if-eqz v6, :cond_0

    .line 1706
    sparse-switch v5, :sswitch_data_0

    .end local p0    # "this":Lorg/jline/builtins/ScreenTerminal;
    goto/16 :goto_1

    .line 1708
    .restart local p0    # "this":Lorg/jline/builtins/ScreenTerminal;
    :sswitch_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "~"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 1709
    goto/16 :goto_1

    .line 1774
    .end local p0    # "this":Lorg/jline/builtins/ScreenTerminal;
    :sswitch_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u001b[24~"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    goto/16 :goto_1

    .line 1771
    :sswitch_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u001b[23~"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 1772
    goto/16 :goto_1

    .line 1768
    :sswitch_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u001b[21~"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 1769
    goto/16 :goto_1

    .line 1765
    :sswitch_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u001b[20~"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 1766
    goto/16 :goto_1

    .line 1762
    :sswitch_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u001b[19~"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 1763
    goto/16 :goto_1

    .line 1759
    :sswitch_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u001b[18~"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 1760
    goto/16 :goto_1

    .line 1756
    :sswitch_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u001b[17~"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 1757
    goto/16 :goto_1

    .line 1753
    :sswitch_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u001b[15~"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 1754
    goto/16 :goto_1

    .line 1750
    :sswitch_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u001bOS"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 1751
    goto/16 :goto_1

    .line 1747
    :sswitch_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u001bOR"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 1748
    goto/16 :goto_1

    .line 1744
    :sswitch_b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u001bOQ"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 1745
    goto/16 :goto_1

    .line 1741
    :sswitch_c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u001bOP"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 1742
    goto/16 :goto_1

    .line 1726
    :sswitch_d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u001bOH"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 1727
    goto/16 :goto_1

    .line 1723
    :sswitch_e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u001bOF"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 1724
    goto/16 :goto_1

    .line 1720
    :sswitch_f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u001bOD"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 1721
    goto/16 :goto_1

    .line 1717
    :sswitch_10
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u001bOC"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 1718
    goto/16 :goto_1

    .line 1714
    :sswitch_11
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u001bOB"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 1715
    goto :goto_1

    .line 1711
    :sswitch_12
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u001bOA"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 1712
    goto :goto_1

    .line 1738
    :sswitch_13
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u001b[3~"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 1739
    goto :goto_1

    .line 1735
    :sswitch_14
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u001b[2~"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 1736
    goto :goto_1

    .line 1732
    :sswitch_15
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u001b[6~"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 1733
    goto :goto_1

    .line 1729
    :sswitch_16
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u001b[5~"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 1730
    nop

    .line 1775
    :goto_1
    goto/16 :goto_3

    .line 1778
    :cond_0
    sparse-switch v5, :sswitch_data_1

    goto/16 :goto_2

    .line 1780
    :sswitch_17
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "~"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 1781
    goto/16 :goto_2

    .line 1846
    :sswitch_18
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u001b[24~"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    goto/16 :goto_2

    .line 1843
    :sswitch_19
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u001b[23~"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 1844
    goto/16 :goto_2

    .line 1840
    :sswitch_1a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u001b[21~"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 1841
    goto/16 :goto_2

    .line 1837
    :sswitch_1b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u001b[20~"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 1838
    goto/16 :goto_2

    .line 1834
    :sswitch_1c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u001b[19~"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 1835
    goto/16 :goto_2

    .line 1831
    :sswitch_1d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u001b[18~"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 1832
    goto/16 :goto_2

    .line 1828
    :sswitch_1e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u001b[17~"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 1829
    goto/16 :goto_2

    .line 1825
    :sswitch_1f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u001b[15~"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 1826
    goto/16 :goto_2

    .line 1822
    :sswitch_20
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u001bOS"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 1823
    goto/16 :goto_2

    .line 1819
    :sswitch_21
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u001bOR"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 1820
    goto/16 :goto_2

    .line 1816
    :sswitch_22
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u001bOQ"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 1817
    goto/16 :goto_2

    .line 1813
    :sswitch_23
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u001bOP"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 1814
    goto/16 :goto_2

    .line 1798
    :sswitch_24
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u001b[H"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 1799
    goto/16 :goto_2

    .line 1795
    :sswitch_25
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u001b[F"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 1796
    goto/16 :goto_2

    .line 1792
    :sswitch_26
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u001b[D"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 1793
    goto/16 :goto_2

    .line 1789
    :sswitch_27
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u001b[C"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 1790
    goto/16 :goto_2

    .line 1786
    :sswitch_28
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u001b[B"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 1787
    goto :goto_2

    .line 1783
    :sswitch_29
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u001b[A"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 1784
    goto :goto_2

    .line 1810
    :sswitch_2a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u001b[3~"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 1811
    goto :goto_2

    .line 1807
    :sswitch_2b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u001b[2~"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 1808
    goto :goto_2

    .line 1804
    :sswitch_2c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u001b[6~"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 1805
    goto :goto_2

    .line 1801
    :sswitch_2d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u001b[5~"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 1802
    nop

    .line 1847
    :goto_2
    goto :goto_3

    .line 1850
    :cond_1
    const/16 v6, 0x7e

    if-ne v5, v6, :cond_2

    .line 1851
    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_keyfilter_escape:Z

    goto :goto_3

    .line 1852
    :cond_2
    const/16 v6, 0x7f

    if-ne v5, v6, :cond_4

    .line 1853
    iget-boolean v7, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_mode_backspace:Z

    if-eqz v7, :cond_3

    .line 1854
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    goto :goto_3

    .line 1856
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    goto :goto_3

    .line 1859
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 1860
    iget-boolean v6, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_mode_lfnewline:Z

    if-eqz v6, :cond_5

    const/16 v6, 0xd

    if-ne v5, v6, :cond_5

    .line 1861
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v6

    .line 1702
    .end local v5    # "c":C
    :cond_5
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1865
    :cond_6
    monitor-exit p0

    return-object v0

    .line 1700
    .end local v0    # "o":Ljava/lang/String;
    .end local p1    # "d":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :sswitch_data_0
    .sparse-switch
        0x31 -> :sswitch_16
        0x32 -> :sswitch_15
        0x33 -> :sswitch_14
        0x34 -> :sswitch_13
        0x41 -> :sswitch_12
        0x42 -> :sswitch_11
        0x43 -> :sswitch_10
        0x44 -> :sswitch_f
        0x46 -> :sswitch_e
        0x48 -> :sswitch_d
        0x61 -> :sswitch_c
        0x62 -> :sswitch_b
        0x63 -> :sswitch_a
        0x64 -> :sswitch_9
        0x65 -> :sswitch_8
        0x66 -> :sswitch_7
        0x67 -> :sswitch_6
        0x68 -> :sswitch_5
        0x69 -> :sswitch_4
        0x6a -> :sswitch_3
        0x6b -> :sswitch_2
        0x6c -> :sswitch_1
        0x7e -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x31 -> :sswitch_2d
        0x32 -> :sswitch_2c
        0x33 -> :sswitch_2b
        0x34 -> :sswitch_2a
        0x41 -> :sswitch_29
        0x42 -> :sswitch_28
        0x43 -> :sswitch_27
        0x44 -> :sswitch_26
        0x46 -> :sswitch_25
        0x48 -> :sswitch_24
        0x61 -> :sswitch_23
        0x62 -> :sswitch_22
        0x63 -> :sswitch_21
        0x64 -> :sswitch_20
        0x65 -> :sswitch_1f
        0x66 -> :sswitch_1e
        0x67 -> :sswitch_1d
        0x68 -> :sswitch_1c
        0x69 -> :sswitch_1b
        0x6a -> :sswitch_1a
        0x6b -> :sswitch_19
        0x6c -> :sswitch_18
        0x7e -> :sswitch_17
    .end sparse-switch
.end method

.method public declared-synchronized read()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 1695
    :try_start_0
    iget-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_out:Ljava/lang/String;

    .line 1696
    .local v0, "d":Ljava/lang/String;
    const-string v1, ""

    iput-object v1, p0, Lorg/jline/builtins/ScreenTerminal;->vt100_out:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1697
    monitor-exit p0

    return-object v0

    .line 1694
    .end local v0    # "d":Ljava/lang/String;
    .end local p0    # "this":Lorg/jline/builtins/ScreenTerminal;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized setDirty()V
    .locals 2

    monitor-enter p0

    .line 1608
    :try_start_0
    iget-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->dirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1609
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1610
    monitor-exit p0

    return-void

    .line 1607
    .end local p0    # "this":Lorg/jline/builtins/ScreenTerminal;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSize(II)Z
    .locals 11
    .param p1, "w"    # I
    .param p2, "h"    # I

    monitor-enter p0

    .line 1617
    const/4 v0, 0x2

    const/4 v1, 0x0

    if-lt p1, v0, :cond_10

    const/16 v2, 0x100

    if-gt p1, v2, :cond_10

    if-lt p2, v0, :cond_10

    if-le p2, v2, :cond_0

    goto/16 :goto_7

    .line 1622
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget v3, p0, Lorg/jline/builtins/ScreenTerminal;->height:I

    if-ge v2, v3, :cond_3

    .line 1623
    iget-object v3, p0, Lorg/jline/builtins/ScreenTerminal;->screen:[[J

    aget-object v4, v3, v2

    array-length v5, v4

    if-ge v5, p1, :cond_1

    .line 1624
    invoke-static {v4, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v4

    aput-object v4, v3, v2

    .line 1626
    .end local p0    # "this":Lorg/jline/builtins/ScreenTerminal;
    :cond_1
    iget-object v3, p0, Lorg/jline/builtins/ScreenTerminal;->screen2:[[J

    aget-object v4, v3, v2

    array-length v5, v4

    if-ge v5, p1, :cond_2

    .line 1627
    invoke-static {v4, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v4

    aput-object v4, v3, v2

    .line 1622
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1630
    .end local v2    # "i":I
    :cond_3
    iget v2, p0, Lorg/jline/builtins/ScreenTerminal;->cx:I

    if-lt v2, p1, :cond_4

    .line 1631
    add-int/lit8 v2, p1, -0x1

    iput v2, p0, Lorg/jline/builtins/ScreenTerminal;->cx:I

    .line 1635
    :cond_4
    const-wide/16 v4, 0x20

    if-ge p2, v3, :cond_8

    .line 1636
    sub-int v2, v3, p2

    .line 1638
    .local v2, "needed":I
    add-int/lit8 v6, v3, -0x1

    iget v7, p0, Lorg/jline/builtins/ScreenTerminal;->cy:I

    sub-int/2addr v6, v7

    .line 1639
    .local v6, "avail":I
    if-lez v6, :cond_6

    .line 1640
    if-le v6, v2, :cond_5

    .line 1641
    move v6, v2

    .line 1643
    :cond_5
    iget-object v7, p0, Lorg/jline/builtins/ScreenTerminal;->screen:[[J

    sub-int/2addr v3, v6

    invoke-static {v7, v1, v3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[J

    iput-object v3, p0, Lorg/jline/builtins/ScreenTerminal;->screen:[[J

    .line 1645
    :cond_6
    sub-int/2addr v2, v6

    .line 1647
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_7

    .line 1648
    iget-object v7, p0, Lorg/jline/builtins/ScreenTerminal;->history:Ljava/util/List;

    iget-object v8, p0, Lorg/jline/builtins/ScreenTerminal;->screen:[[J

    aget-object v8, v8, v3

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1647
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1650
    .end local v3    # "i":I
    :cond_7
    iget-object v3, p0, Lorg/jline/builtins/ScreenTerminal;->screen:[[J

    array-length v7, v3

    invoke-static {v3, v2, v7}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[J

    iput-object v3, p0, Lorg/jline/builtins/ScreenTerminal;->screen:[[J

    .line 1651
    iget v3, p0, Lorg/jline/builtins/ScreenTerminal;->cy:I

    sub-int/2addr v3, v2

    iput v3, p0, Lorg/jline/builtins/ScreenTerminal;->cy:I

    .line 1652
    .end local v2    # "needed":I
    .end local v6    # "avail":I
    goto :goto_4

    .line 1653
    :cond_8
    if-le p2, v3, :cond_d

    .line 1654
    sub-int v2, p2, v3

    .line 1656
    .restart local v2    # "needed":I
    iget-object v3, p0, Lorg/jline/builtins/ScreenTerminal;->history:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 1657
    .local v3, "avail":I
    if-le v3, v2, :cond_9

    .line 1658
    move v3, v2

    .line 1660
    :cond_9
    new-array v6, p2, [[J

    .line 1661
    .local v6, "sc":[[J
    if-lez v3, :cond_b

    .line 1662
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-ge v7, v3, :cond_a

    .line 1663
    iget-object v8, p0, Lorg/jline/builtins/ScreenTerminal;->history:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v3

    add-int/2addr v9, v7

    invoke-interface {v8, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [J

    aput-object v8, v6, v7

    .line 1662
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1665
    .end local v7    # "i":I
    :cond_a
    iget v7, p0, Lorg/jline/builtins/ScreenTerminal;->cy:I

    add-int/2addr v7, v3

    iput v7, p0, Lorg/jline/builtins/ScreenTerminal;->cy:I

    .line 1667
    :cond_b
    iget-object v7, p0, Lorg/jline/builtins/ScreenTerminal;->screen:[[J

    array-length v8, v7

    invoke-static {v7, v1, v6, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1668
    iget-object v7, p0, Lorg/jline/builtins/ScreenTerminal;->screen:[[J

    array-length v7, v7

    add-int/2addr v7, v3

    .restart local v7    # "i":I
    :goto_3
    array-length v8, v6

    if-ge v7, v8, :cond_c

    .line 1669
    new-array v8, p1, [J

    aput-object v8, v6, v7

    .line 1670
    aget-object v8, v6, v7

    iget-wide v9, p0, Lorg/jline/builtins/ScreenTerminal;->attr:J

    or-long/2addr v9, v4

    invoke-static {v8, v9, v10}, Ljava/util/Arrays;->fill([JJ)V

    .line 1668
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1672
    .end local v7    # "i":I
    :cond_c
    iput-object v6, p0, Lorg/jline/builtins/ScreenTerminal;->screen:[[J

    .line 1675
    .end local v2    # "needed":I
    .end local v3    # "avail":I
    .end local v6    # "sc":[[J
    :cond_d
    :goto_4
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    new-array v0, v0, [I

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    iput-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->screen2:[[J

    .line 1676
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    if-ge v0, p2, :cond_e

    .line 1677
    iget-object v2, p0, Lorg/jline/builtins/ScreenTerminal;->screen2:[[J

    aget-object v2, v2, v0

    iget-wide v6, p0, Lorg/jline/builtins/ScreenTerminal;->attr:J

    or-long/2addr v6, v4

    invoke-static {v2, v6, v7}, Ljava/util/Arrays;->fill([JJ)V

    .line 1676
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1681
    .end local v0    # "i":I
    :cond_e
    iget v0, p0, Lorg/jline/builtins/ScreenTerminal;->scroll_area_y0:I

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/jline/builtins/ScreenTerminal;->scroll_area_y0:I

    .line 1682
    iget v0, p0, Lorg/jline/builtins/ScreenTerminal;->scroll_area_y1:I

    iget v2, p0, Lorg/jline/builtins/ScreenTerminal;->height:I

    if-ne v0, v2, :cond_f

    move v0, p2

    goto :goto_6

    :cond_f
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_6
    iput v0, p0, Lorg/jline/builtins/ScreenTerminal;->scroll_area_y1:I

    .line 1684
    add-int/lit8 v0, p1, -0x1

    iget v2, p0, Lorg/jline/builtins/ScreenTerminal;->cx:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/jline/builtins/ScreenTerminal;->cx:I

    .line 1685
    add-int/lit8 v0, p2, -0x1

    iget v2, p0, Lorg/jline/builtins/ScreenTerminal;->cy:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/jline/builtins/ScreenTerminal;->cy:I

    .line 1687
    iput p1, p0, Lorg/jline/builtins/ScreenTerminal;->width:I

    .line 1688
    iput p2, p0, Lorg/jline/builtins/ScreenTerminal;->height:I

    .line 1690
    invoke-virtual {p0}, Lorg/jline/builtins/ScreenTerminal;->setDirty()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1691
    monitor-exit p0

    return v1

    .line 1616
    .end local p1    # "w":I
    .end local p2    # "h":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 1618
    .restart local p1    # "w":I
    .restart local p2    # "h":I
    :cond_10
    :goto_7
    monitor-exit p0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1966
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1967
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "y":I
    :goto_0
    iget v2, p0, Lorg/jline/builtins/ScreenTerminal;->height:I

    if-ge v1, v2, :cond_1

    .line 1968
    const/4 v2, 0x0

    .local v2, "x":I
    :goto_1
    iget v3, p0, Lorg/jline/builtins/ScreenTerminal;->width:I

    if-ge v2, v3, :cond_0

    .line 1969
    iget-object v3, p0, Lorg/jline/builtins/ScreenTerminal;->screen:[[J

    aget-object v3, v3, v1

    aget-wide v3, v3, v2

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    long-to-int v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 1968
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1971
    .end local v2    # "x":I
    :cond_0
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1967
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1973
    .end local v1    # "y":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public declared-synchronized waitDirty()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 1602
    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/jline/builtins/ScreenTerminal;->dirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1603
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1605
    .end local p0    # "this":Lorg/jline/builtins/ScreenTerminal;
    :cond_0
    monitor-exit p0

    return-void

    .line 1601
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write(Ljava/lang/CharSequence;)Z
    .locals 2
    .param p1, "d"    # Ljava/lang/CharSequence;

    monitor-enter p0

    .line 1869
    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->codePoints()Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lorg/jline/builtins/ScreenTerminal$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/jline/builtins/ScreenTerminal$$ExternalSyntheticLambda0;-><init>(Lorg/jline/builtins/ScreenTerminal;)V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->forEachOrdered(Ljava/util/function/IntConsumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1874
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 1868
    .end local p0    # "this":Lorg/jline/builtins/ScreenTerminal;
    .end local p1    # "d":Ljava/lang/CharSequence;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
