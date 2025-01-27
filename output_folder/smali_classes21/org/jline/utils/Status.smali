.class public Lorg/jline/utils/Status;
.super Ljava/lang/Object;
.source "Status.java"


# instance fields
.field protected border:I

.field protected borderString:Lorg/jline/utils/AttributedString;

.field protected columns:I

.field protected force:Z

.field protected linesToRestore:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jline/utils/AttributedString;",
            ">;"
        }
    .end annotation
.end field

.field protected oldLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jline/utils/AttributedString;",
            ">;"
        }
    .end annotation
.end field

.field protected rows:I

.field protected final supported:Z

.field protected suspended:Z

.field protected final terminal:Lorg/jline/terminal/impl/AbstractTerminal;


# direct methods
.method public constructor <init>(Lorg/jline/terminal/impl/AbstractTerminal;)V
    .locals 4
    .param p1, "terminal"    # Lorg/jline/terminal/impl/AbstractTerminal;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/utils/Status;->oldLines:Ljava/util/List;

    .line 25
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/utils/Status;->linesToRestore:Ljava/util/List;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jline/utils/Status;->suspended:Z

    .line 31
    iput v0, p0, Lorg/jline/utils/Status;->border:I

    .line 45
    const-string v1, "terminal can not be null"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jline/terminal/impl/AbstractTerminal;

    iput-object v1, p0, Lorg/jline/utils/Status;->terminal:Lorg/jline/terminal/impl/AbstractTerminal;

    .line 46
    sget-object v1, Lorg/jline/utils/InfoCmp$Capability;->change_scroll_region:Lorg/jline/utils/InfoCmp$Capability;

    invoke-virtual {p1, v1}, Lorg/jline/terminal/impl/AbstractTerminal;->getStringCapability(Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/jline/utils/InfoCmp$Capability;->save_cursor:Lorg/jline/utils/InfoCmp$Capability;

    .line 47
    invoke-virtual {p1, v1}, Lorg/jline/terminal/impl/AbstractTerminal;->getStringCapability(Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/jline/utils/InfoCmp$Capability;->restore_cursor:Lorg/jline/utils/InfoCmp$Capability;

    .line 48
    invoke-virtual {p1, v1}, Lorg/jline/terminal/impl/AbstractTerminal;->getStringCapability(Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/jline/utils/InfoCmp$Capability;->cursor_address:Lorg/jline/utils/InfoCmp$Capability;

    .line 49
    invoke-virtual {p1, v1}, Lorg/jline/terminal/impl/AbstractTerminal;->getStringCapability(Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    nop

    :goto_0
    iput-boolean v0, p0, Lorg/jline/utils/Status;->supported:Z

    .line 50
    if-eqz v0, :cond_2

    .line 51
    const/16 v0, 0x2500

    .line 52
    .local v0, "borderChar":C
    new-instance v1, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v1}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    .line 53
    .local v1, "bb":Lorg/jline/utils/AttributedStringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/16 v3, 0xc8

    if-ge v2, v3, :cond_1

    .line 54
    invoke-virtual {v1, v0}, Lorg/jline/utils/AttributedStringBuilder;->append(C)Lorg/jline/utils/AttributedStringBuilder;

    .line 53
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 56
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v1}, Lorg/jline/utils/AttributedStringBuilder;->toAttributedString()Lorg/jline/utils/AttributedString;

    move-result-object v2

    iput-object v2, p0, Lorg/jline/utils/Status;->borderString:Lorg/jline/utils/AttributedString;

    .line 57
    invoke-virtual {p0}, Lorg/jline/utils/Status;->resize()V

    .line 59
    .end local v0    # "borderChar":C
    .end local v1    # "bb":Lorg/jline/utils/AttributedStringBuilder;
    :cond_2
    return-void
.end method

.method private clearAll()V
    .locals 2

    .line 99
    iget v0, p0, Lorg/jline/utils/Status;->border:I

    .line 100
    .local v0, "b":I
    const/4 v1, 0x0

    iput v1, p0, Lorg/jline/utils/Status;->border:I

    .line 101
    iget-object v1, p0, Lorg/jline/utils/Status;->oldLines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Lorg/jline/utils/Status;->privateClear(I)V

    .line 102
    return-void
.end method

.method public static getStatus(Lorg/jline/terminal/Terminal;)Lorg/jline/utils/Status;
    .locals 1
    .param p0, "terminal"    # Lorg/jline/terminal/Terminal;

    .line 34
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/jline/utils/Status;->getStatus(Lorg/jline/terminal/Terminal;Z)Lorg/jline/utils/Status;

    move-result-object v0

    return-object v0
.end method

.method public static getStatus(Lorg/jline/terminal/Terminal;Z)Lorg/jline/utils/Status;
    .locals 1
    .param p0, "terminal"    # Lorg/jline/terminal/Terminal;
    .param p1, "create"    # Z

    .line 38
    instance-of v0, p0, Lorg/jline/terminal/impl/AbstractTerminal;

    if-eqz v0, :cond_0

    .line 39
    move-object v0, p0

    check-cast v0, Lorg/jline/terminal/impl/AbstractTerminal;

    invoke-virtual {v0, p1}, Lorg/jline/terminal/impl/AbstractTerminal;->getStatus(Z)Lorg/jline/utils/Status;

    move-result-object v0

    goto :goto_0

    .line 40
    :cond_0
    const/4 v0, 0x0

    .line 38
    :goto_0
    return-object v0
.end method

.method private privateClear(I)V
    .locals 4
    .param p1, "statusSize"    # I

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v0, "as":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 107
    new-instance v2, Lorg/jline/utils/AttributedString;

    const-string v3, ""

    invoke-direct {v2, v3}, Lorg/jline/utils/AttributedString;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 109
    .end local v1    # "i":I
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 110
    invoke-virtual {p0, v0}, Lorg/jline/utils/Status;->update(Ljava/util/List;)V

    .line 112
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/jline/utils/Status;->oldLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/jline/utils/Status;->privateClear(I)V

    .line 96
    return-void
.end method

.method public hardReset()V
    .locals 3

    .line 77
    iget-boolean v0, p0, Lorg/jline/utils/Status;->suspended:Z

    if-eqz v0, :cond_0

    .line 78
    return-void

    .line 80
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/jline/utils/Status;->oldLines:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 81
    .local v0, "lines":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    iget v1, p0, Lorg/jline/utils/Status;->border:I

    .line 82
    .local v1, "b":I
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/jline/utils/Status;->update(Ljava/util/List;)V

    .line 83
    iput v1, p0, Lorg/jline/utils/Status;->border:I

    .line 84
    invoke-virtual {p0, v0}, Lorg/jline/utils/Status;->update(Ljava/util/List;)V

    .line 85
    return-void
.end method

.method public redraw()V
    .locals 1

    .line 88
    iget-boolean v0, p0, Lorg/jline/utils/Status;->suspended:Z

    if-eqz v0, :cond_0

    .line 89
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lorg/jline/utils/Status;->oldLines:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/jline/utils/Status;->update(Ljava/util/List;)V

    .line 92
    return-void
.end method

.method public reset()V
    .locals 1

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jline/utils/Status;->force:Z

    .line 74
    return-void
.end method

.method public resize()V
    .locals 2

    .line 66
    iget-object v0, p0, Lorg/jline/utils/Status;->terminal:Lorg/jline/terminal/impl/AbstractTerminal;

    invoke-virtual {v0}, Lorg/jline/terminal/impl/AbstractTerminal;->getSize()Lorg/jline/terminal/Size;

    move-result-object v0

    .line 67
    .local v0, "size":Lorg/jline/terminal/Size;
    invoke-virtual {v0}, Lorg/jline/terminal/Size;->getRows()I

    move-result v1

    iput v1, p0, Lorg/jline/utils/Status;->rows:I

    .line 68
    invoke-virtual {v0}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v1

    iput v1, p0, Lorg/jline/utils/Status;->columns:I

    .line 69
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/jline/utils/Status;->force:Z

    .line 70
    return-void
.end method

.method public restore()V
    .locals 1

    .line 182
    iget-boolean v0, p0, Lorg/jline/utils/Status;->suspended:Z

    if-nez v0, :cond_0

    .line 183
    return-void

    .line 185
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jline/utils/Status;->suspended:Z

    .line 186
    iget-object v0, p0, Lorg/jline/utils/Status;->linesToRestore:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/jline/utils/Status;->update(Ljava/util/List;)V

    .line 187
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/utils/Status;->linesToRestore:Ljava/util/List;

    .line 188
    return-void
.end method

.method public setBorder(Z)V
    .locals 0
    .param p1, "border"    # Z

    .line 62
    iput p1, p0, Lorg/jline/utils/Status;->border:I

    .line 63
    return-void
.end method

.method public size()I
    .locals 2

    .line 191
    iget-object v0, p0, Lorg/jline/utils/Status;->oldLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lorg/jline/utils/Status;->border:I

    add-int/2addr v0, v1

    return v0
.end method

.method public suspend()V
    .locals 2

    .line 171
    iget-boolean v0, p0, Lorg/jline/utils/Status;->suspended:Z

    if-eqz v0, :cond_0

    .line 172
    return-void

    .line 174
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/jline/utils/Status;->oldLines:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/jline/utils/Status;->linesToRestore:Ljava/util/List;

    .line 175
    iget v0, p0, Lorg/jline/utils/Status;->border:I

    .line 176
    .local v0, "b":I
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/jline/utils/Status;->update(Ljava/util/List;)V

    .line 177
    iput v0, p0, Lorg/jline/utils/Status;->border:I

    .line 178
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/jline/utils/Status;->suspended:Z

    .line 179
    return-void
.end method

.method public update(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jline/utils/AttributedString;",
            ">;)V"
        }
    .end annotation

    .line 115
    .local p1, "lines":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    iget-boolean v0, p0, Lorg/jline/utils/Status;->supported:Z

    if-nez v0, :cond_0

    .line 116
    return-void

    .line 118
    :cond_0
    if-nez p1, :cond_1

    .line 119
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 121
    :cond_1
    iget-boolean v0, p0, Lorg/jline/utils/Status;->suspended:Z

    if-eqz v0, :cond_2

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/jline/utils/Status;->linesToRestore:Ljava/util/List;

    .line 123
    return-void

    .line 125
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 126
    invoke-direct {p0}, Lorg/jline/utils/Status;->clearAll()V

    .line 128
    :cond_3
    iget-object v0, p0, Lorg/jline/utils/Status;->oldLines:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lorg/jline/utils/Status;->force:Z

    if-nez v0, :cond_4

    .line 129
    return-void

    .line 131
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_5

    move v1, v2

    goto :goto_0

    :cond_5
    iget v1, p0, Lorg/jline/utils/Status;->border:I

    :goto_0
    add-int/2addr v0, v1

    .line 132
    .local v0, "statusSize":I
    iget-object v1, p0, Lorg/jline/utils/Status;->oldLines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int v1, v0, v1

    iget-object v3, p0, Lorg/jline/utils/Status;->oldLines:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_6

    move v3, v2

    goto :goto_1

    :cond_6
    iget v3, p0, Lorg/jline/utils/Status;->border:I

    :goto_1
    sub-int/2addr v1, v3

    .line 133
    .local v1, "nb":I
    if-lez v1, :cond_8

    .line 134
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v1, :cond_7

    .line 135
    iget-object v4, p0, Lorg/jline/utils/Status;->terminal:Lorg/jline/terminal/impl/AbstractTerminal;

    sget-object v5, Lorg/jline/utils/InfoCmp$Capability;->cursor_down:Lorg/jline/utils/InfoCmp$Capability;

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lorg/jline/terminal/impl/AbstractTerminal;->puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z

    .line 134
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 137
    .end local v3    # "i":I
    :cond_7
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    if-ge v3, v1, :cond_8

    .line 138
    iget-object v4, p0, Lorg/jline/utils/Status;->terminal:Lorg/jline/terminal/impl/AbstractTerminal;

    sget-object v5, Lorg/jline/utils/InfoCmp$Capability;->cursor_up:Lorg/jline/utils/InfoCmp$Capability;

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lorg/jline/terminal/impl/AbstractTerminal;->puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z

    .line 137
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 141
    .end local v3    # "i":I
    :cond_8
    iget-object v3, p0, Lorg/jline/utils/Status;->terminal:Lorg/jline/terminal/impl/AbstractTerminal;

    sget-object v4, Lorg/jline/utils/InfoCmp$Capability;->save_cursor:Lorg/jline/utils/InfoCmp$Capability;

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lorg/jline/terminal/impl/AbstractTerminal;->puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z

    .line 142
    iget-object v3, p0, Lorg/jline/utils/Status;->terminal:Lorg/jline/terminal/impl/AbstractTerminal;

    sget-object v4, Lorg/jline/utils/InfoCmp$Capability;->cursor_address:Lorg/jline/utils/InfoCmp$Capability;

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    iget v7, p0, Lorg/jline/utils/Status;->rows:I

    sub-int/2addr v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-virtual {v3, v4, v6}, Lorg/jline/terminal/impl/AbstractTerminal;->puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z

    .line 143
    iget-object v3, p0, Lorg/jline/utils/Status;->terminal:Lorg/jline/terminal/impl/AbstractTerminal;

    sget-object v4, Lorg/jline/utils/InfoCmp$Capability;->clr_eos:Lorg/jline/utils/InfoCmp$Capability;

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v6}, Lorg/jline/terminal/impl/AbstractTerminal;->puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 144
    iget v3, p0, Lorg/jline/utils/Status;->rows:I

    sub-int/2addr v3, v0

    .restart local v3    # "i":I
    :goto_4
    iget v4, p0, Lorg/jline/utils/Status;->rows:I

    if-ge v3, v4, :cond_9

    .line 145
    iget-object v4, p0, Lorg/jline/utils/Status;->terminal:Lorg/jline/terminal/impl/AbstractTerminal;

    sget-object v6, Lorg/jline/utils/InfoCmp$Capability;->cursor_address:Lorg/jline/utils/InfoCmp$Capability;

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v6, v7}, Lorg/jline/terminal/impl/AbstractTerminal;->puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z

    .line 146
    iget-object v4, p0, Lorg/jline/utils/Status;->terminal:Lorg/jline/terminal/impl/AbstractTerminal;

    sget-object v6, Lorg/jline/utils/InfoCmp$Capability;->clr_eol:Lorg/jline/utils/InfoCmp$Capability;

    new-array v7, v2, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/jline/terminal/impl/AbstractTerminal;->puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z

    .line 144
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 149
    .end local v3    # "i":I
    :cond_9
    iget v3, p0, Lorg/jline/utils/Status;->border:I

    if-ne v3, v8, :cond_a

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_a

    .line 150
    iget-object v3, p0, Lorg/jline/utils/Status;->terminal:Lorg/jline/terminal/impl/AbstractTerminal;

    sget-object v4, Lorg/jline/utils/InfoCmp$Capability;->cursor_address:Lorg/jline/utils/InfoCmp$Capability;

    new-array v6, v5, [Ljava/lang/Object;

    iget v7, p0, Lorg/jline/utils/Status;->rows:I

    sub-int/2addr v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v3, v4, v6}, Lorg/jline/terminal/impl/AbstractTerminal;->puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z

    .line 151
    iget-object v3, p0, Lorg/jline/utils/Status;->borderString:Lorg/jline/utils/AttributedString;

    iget v4, p0, Lorg/jline/utils/Status;->columns:I

    invoke-virtual {v3, v2, v4}, Lorg/jline/utils/AttributedString;->columnSubSequence(II)Lorg/jline/utils/AttributedString;

    move-result-object v3

    iget-object v4, p0, Lorg/jline/utils/Status;->terminal:Lorg/jline/terminal/impl/AbstractTerminal;

    invoke-virtual {v3, v4}, Lorg/jline/utils/AttributedString;->print(Lorg/jline/terminal/Terminal;)V

    .line 153
    :cond_a
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_c

    .line 154
    iget-object v4, p0, Lorg/jline/utils/Status;->terminal:Lorg/jline/terminal/impl/AbstractTerminal;

    sget-object v6, Lorg/jline/utils/InfoCmp$Capability;->cursor_address:Lorg/jline/utils/InfoCmp$Capability;

    new-array v7, v5, [Ljava/lang/Object;

    iget v9, p0, Lorg/jline/utils/Status;->rows:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v9, v10

    add-int/2addr v9, v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v6, v7}, Lorg/jline/terminal/impl/AbstractTerminal;->puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z

    .line 155
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jline/utils/AttributedString;

    invoke-virtual {v4}, Lorg/jline/utils/AttributedString;->length()I

    move-result v4

    iget v6, p0, Lorg/jline/utils/Status;->columns:I

    if-le v4, v6, :cond_b

    .line 156
    new-instance v4, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v4}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    .line 157
    .local v4, "asb":Lorg/jline/utils/AttributedStringBuilder;
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jline/utils/AttributedString;

    iget v7, p0, Lorg/jline/utils/Status;->columns:I

    add-int/lit8 v7, v7, -0x3

    invoke-virtual {v6, v2, v7}, Lorg/jline/utils/AttributedString;->substring(II)Lorg/jline/utils/AttributedString;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v6

    new-instance v7, Lorg/jline/utils/AttributedStyle;

    sget-object v9, Lorg/jline/utils/AttributedStyle;->INVERSE:Lorg/jline/utils/AttributedStyle;

    invoke-direct {v7, v9}, Lorg/jline/utils/AttributedStyle;-><init>(Lorg/jline/utils/AttributedStyle;)V

    const-string v9, "..."

    invoke-virtual {v6, v9, v7}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    .line 158
    invoke-virtual {v4}, Lorg/jline/utils/AttributedStringBuilder;->toAttributedString()Lorg/jline/utils/AttributedString;

    move-result-object v6

    iget v7, p0, Lorg/jline/utils/Status;->columns:I

    invoke-virtual {v6, v2, v7}, Lorg/jline/utils/AttributedString;->columnSubSequence(II)Lorg/jline/utils/AttributedString;

    move-result-object v6

    iget-object v7, p0, Lorg/jline/utils/Status;->terminal:Lorg/jline/terminal/impl/AbstractTerminal;

    invoke-virtual {v6, v7}, Lorg/jline/utils/AttributedString;->print(Lorg/jline/terminal/Terminal;)V

    .line 159
    .end local v4    # "asb":Lorg/jline/utils/AttributedStringBuilder;
    goto :goto_6

    .line 160
    :cond_b
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jline/utils/AttributedString;

    iget v6, p0, Lorg/jline/utils/Status;->columns:I

    invoke-virtual {v4, v2, v6}, Lorg/jline/utils/AttributedString;->columnSubSequence(II)Lorg/jline/utils/AttributedString;

    move-result-object v4

    iget-object v6, p0, Lorg/jline/utils/Status;->terminal:Lorg/jline/terminal/impl/AbstractTerminal;

    invoke-virtual {v4, v6}, Lorg/jline/utils/AttributedString;->print(Lorg/jline/terminal/Terminal;)V

    .line 153
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 163
    .end local v3    # "i":I
    :cond_c
    iget-object v3, p0, Lorg/jline/utils/Status;->terminal:Lorg/jline/terminal/impl/AbstractTerminal;

    sget-object v4, Lorg/jline/utils/InfoCmp$Capability;->change_scroll_region:Lorg/jline/utils/InfoCmp$Capability;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    iget v6, p0, Lorg/jline/utils/Status;->rows:I

    sub-int/2addr v6, v8

    sub-int/2addr v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Lorg/jline/terminal/impl/AbstractTerminal;->puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z

    .line 164
    iget-object v3, p0, Lorg/jline/utils/Status;->terminal:Lorg/jline/terminal/impl/AbstractTerminal;

    sget-object v4, Lorg/jline/utils/InfoCmp$Capability;->restore_cursor:Lorg/jline/utils/InfoCmp$Capability;

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lorg/jline/terminal/impl/AbstractTerminal;->puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z

    .line 165
    iget-object v3, p0, Lorg/jline/utils/Status;->terminal:Lorg/jline/terminal/impl/AbstractTerminal;

    invoke-virtual {v3}, Lorg/jline/terminal/impl/AbstractTerminal;->flush()V

    .line 166
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lorg/jline/utils/Status;->oldLines:Ljava/util/List;

    .line 167
    iput-boolean v2, p0, Lorg/jline/utils/Status;->force:Z

    .line 168
    return-void
.end method
