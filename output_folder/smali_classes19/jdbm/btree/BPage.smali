.class public final Ljdbm/btree/BPage;
.super Ljava/lang/Object;
.source "BPage.java"

# interfaces
.implements Ljdbm/helper/Serializer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljdbm/btree/BPage$Browser;,
        Ljdbm/btree/BPage$RemoveResult;,
        Ljdbm/btree/BPage$InsertResult;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final serialVersionUID:J = 0x1L


# instance fields
.field transient _btree:Ljdbm/btree/BTree;

.field protected _children:[J

.field protected _first:I

.field protected _isLeaf:Z

.field protected _keys:[Ljava/lang/Object;

.field protected _next:J

.field protected _previous:J

.field protected transient _recid:J

.field protected _values:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    return-void
.end method

.method constructor <init>(Ljdbm/btree/BTree;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .param p1, "btree"    # Ljdbm/btree/BTree;
    .param p2, "key"    # Ljava/lang/Object;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput-object p1, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljdbm/btree/BPage;->_isLeaf:Z

    .line 189
    iget v1, p1, Ljdbm/btree/BTree;->_pageSize:I

    add-int/lit8 v1, v1, -0x2

    iput v1, p0, Ljdbm/btree/BPage;->_first:I

    .line 191
    iget-object v1, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget v1, v1, Ljdbm/btree/BTree;->_pageSize:I

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Ljdbm/btree/BPage;->_keys:[Ljava/lang/Object;

    .line 192
    iget-object v2, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget v2, v2, Ljdbm/btree/BTree;->_pageSize:I

    add-int/lit8 v2, v2, -0x2

    aput-object p2, v1, v2

    .line 193
    iget-object v1, p0, Ljdbm/btree/BPage;->_keys:[Ljava/lang/Object;

    iget-object v2, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget v2, v2, Ljdbm/btree/BTree;->_pageSize:I

    sub-int/2addr v2, v0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 195
    iget-object v1, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget v1, v1, Ljdbm/btree/BTree;->_pageSize:I

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Ljdbm/btree/BPage;->_values:[Ljava/lang/Object;

    .line 196
    iget-object v2, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget v2, v2, Ljdbm/btree/BTree;->_pageSize:I

    add-int/lit8 v2, v2, -0x2

    aput-object p3, v1, v2

    .line 197
    iget-object v1, p0, Ljdbm/btree/BPage;->_values:[Ljava/lang/Object;

    iget-object v2, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget v2, v2, Ljdbm/btree/BTree;->_pageSize:I

    sub-int/2addr v2, v0

    aput-object v3, v1, v2

    .line 199
    iget-object v0, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget-object v0, v0, Ljdbm/btree/BTree;->_recman:Ljdbm/RecordManager;

    invoke-interface {v0, p0, p0}, Ljdbm/RecordManager;->insert(Ljava/lang/Object;Ljdbm/helper/Serializer;)J

    move-result-wide v0

    iput-wide v0, p0, Ljdbm/btree/BPage;->_recid:J

    .line 200
    return-void
.end method

.method constructor <init>(Ljdbm/btree/BTree;Ljdbm/btree/BPage;Ljdbm/btree/BPage;)V
    .locals 4
    .param p1, "btree"    # Ljdbm/btree/BTree;
    .param p2, "root"    # Ljdbm/btree/BPage;
    .param p3, "overflow"    # Ljdbm/btree/BPage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object p1, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljdbm/btree/BPage;->_isLeaf:Z

    .line 165
    iget v0, p1, Ljdbm/btree/BTree;->_pageSize:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Ljdbm/btree/BPage;->_first:I

    .line 167
    iget-object v0, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget v0, v0, Ljdbm/btree/BTree;->_pageSize:I

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Ljdbm/btree/BPage;->_keys:[Ljava/lang/Object;

    .line 168
    iget-object v1, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget v1, v1, Ljdbm/btree/BTree;->_pageSize:I

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p3}, Ljdbm/btree/BPage;->getLargestKey()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 169
    iget-object v0, p0, Ljdbm/btree/BPage;->_keys:[Ljava/lang/Object;

    iget-object v1, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget v1, v1, Ljdbm/btree/BTree;->_pageSize:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p2}, Ljdbm/btree/BPage;->getLargestKey()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 171
    iget-object v0, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget v0, v0, Ljdbm/btree/BTree;->_pageSize:I

    new-array v0, v0, [J

    iput-object v0, p0, Ljdbm/btree/BPage;->_children:[J

    .line 172
    iget-object v1, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget v1, v1, Ljdbm/btree/BTree;->_pageSize:I

    add-int/lit8 v1, v1, -0x2

    iget-wide v2, p3, Ljdbm/btree/BPage;->_recid:J

    aput-wide v2, v0, v1

    .line 173
    iget-object v0, p0, Ljdbm/btree/BPage;->_children:[J

    iget-object v1, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget v1, v1, Ljdbm/btree/BTree;->_pageSize:I

    add-int/lit8 v1, v1, -0x1

    iget-wide v2, p2, Ljdbm/btree/BPage;->_recid:J

    aput-wide v2, v0, v1

    .line 175
    iget-object v0, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget-object v0, v0, Ljdbm/btree/BTree;->_recman:Ljdbm/RecordManager;

    invoke-interface {v0, p0, p0}, Ljdbm/RecordManager;->insert(Ljava/lang/Object;Ljdbm/helper/Serializer;)J

    move-result-wide v0

    iput-wide v0, p0, Ljdbm/btree/BPage;->_recid:J

    .line 176
    return-void
.end method

.method constructor <init>(Ljdbm/btree/BTree;Z)V
    .locals 2
    .param p1, "btree"    # Ljdbm/btree/BTree;
    .param p2, "isLeaf"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    iput-object p1, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    .line 211
    iput-boolean p2, p0, Ljdbm/btree/BPage;->_isLeaf:Z

    .line 214
    iget v0, p1, Ljdbm/btree/BTree;->_pageSize:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Ljdbm/btree/BPage;->_first:I

    .line 216
    iget-object v0, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget v0, v0, Ljdbm/btree/BTree;->_pageSize:I

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Ljdbm/btree/BPage;->_keys:[Ljava/lang/Object;

    .line 217
    if-eqz p2, :cond_0

    .line 218
    iget-object v0, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget v0, v0, Ljdbm/btree/BTree;->_pageSize:I

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Ljdbm/btree/BPage;->_values:[Ljava/lang/Object;

    .line 219
    goto :goto_0

    .line 220
    :cond_0
    iget-object v0, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget v0, v0, Ljdbm/btree/BTree;->_pageSize:I

    new-array v0, v0, [J

    iput-object v0, p0, Ljdbm/btree/BPage;->_children:[J

    .line 223
    :goto_0
    iget-object v0, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget-object v0, v0, Ljdbm/btree/BTree;->_recman:Ljdbm/RecordManager;

    invoke-interface {v0, p0, p0}, Ljdbm/RecordManager;->insert(Ljava/lang/Object;Ljdbm/helper/Serializer;)J

    move-result-wide v0

    iput-wide v0, p0, Ljdbm/btree/BPage;->_recid:J

    .line 224
    return-void
.end method

.method static synthetic access$000(Ljdbm/btree/BPage;J)Ljdbm/btree/BPage;
    .locals 1
    .param p0, "x0"    # Ljdbm/btree/BPage;
    .param p1, "x1"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    invoke-direct {p0, p1, p2}, Ljdbm/btree/BPage;->loadBPage(J)Ljdbm/btree/BPage;

    move-result-object v0

    return-object v0
.end method

.method private assertConsistency()V
    .locals 4

    .line 917
    iget v0, p0, Ljdbm/btree/BPage;->_first:I

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget v1, v1, Ljdbm/btree/BTree;->_pageSize:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 918
    iget-object v1, p0, Ljdbm/btree/BPage;->_keys:[Ljava/lang/Object;

    aget-object v2, v1, v0

    check-cast v2, [B

    check-cast v2, [B

    add-int/lit8 v3, v0, 0x1

    aget-object v1, v1, v3

    check-cast v1, [B

    check-cast v1, [B

    invoke-direct {p0, v2, v1}, Ljdbm/btree/BPage;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_0

    .line 917
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 919
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Ljdbm/btree/BPage;->dump(I)V

    .line 920
    new-instance v1, Ljava/lang/Error;

    const-string v2, "BPage not ordered"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 923
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "value1"    # Ljava/lang/Object;
    .param p2, "value2"    # Ljava/lang/Object;

    .line 835
    if-nez p1, :cond_0

    .line 836
    const/4 v0, 0x1

    return v0

    .line 838
    :cond_0
    if-nez p2, :cond_1

    .line 839
    const/4 v0, -0x1

    return v0

    .line 841
    :cond_1
    iget-object v0, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget-object v0, v0, Ljdbm/btree/BTree;->_comparator:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private static copyChildren(Ljdbm/btree/BPage;ILjdbm/btree/BPage;II)V
    .locals 2
    .param p0, "source"    # Ljdbm/btree/BPage;
    .param p1, "indexSource"    # I
    .param p2, "dest"    # Ljdbm/btree/BPage;
    .param p3, "indexDest"    # I
    .param p4, "count"    # I

    .line 805
    iget-object v0, p0, Ljdbm/btree/BPage;->_keys:[Ljava/lang/Object;

    iget-object v1, p2, Ljdbm/btree/BPage;->_keys:[Ljava/lang/Object;

    invoke-static {v0, p1, v1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 806
    iget-object v0, p0, Ljdbm/btree/BPage;->_children:[J

    iget-object v1, p2, Ljdbm/btree/BPage;->_children:[J

    invoke-static {v0, p1, v1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 807
    return-void
.end method

.method private static copyEntries(Ljdbm/btree/BPage;ILjdbm/btree/BPage;II)V
    .locals 2
    .param p0, "source"    # Ljdbm/btree/BPage;
    .param p1, "indexSource"    # I
    .param p2, "dest"    # Ljdbm/btree/BPage;
    .param p3, "indexDest"    # I
    .param p4, "count"    # I

    .line 794
    iget-object v0, p0, Ljdbm/btree/BPage;->_keys:[Ljava/lang/Object;

    iget-object v1, p2, Ljdbm/btree/BPage;->_keys:[Ljava/lang/Object;

    invoke-static {v0, p1, v1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 795
    iget-object v0, p0, Ljdbm/btree/BPage;->_values:[Ljava/lang/Object;

    iget-object v1, p2, Ljdbm/btree/BPage;->_values:[Ljava/lang/Object;

    invoke-static {v0, p1, v1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 796
    return-void
.end method

.method private dump(I)V
    .locals 7
    .param p1, "height"    # I

    .line 874
    const-string v0, ""

    .line 875
    .local v0, "prefix":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 876
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 875
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 878
    .end local v1    # "i":I
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "-------------------------------------- BPage recid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-wide v3, p0, Ljdbm/btree/BPage;->_recid:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 879
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "first="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Ljdbm/btree/BPage;->_first:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 880
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget v2, v2, Ljdbm/btree/BTree;->_pageSize:I

    if-ge v1, v2, :cond_2

    .line 881
    iget-boolean v2, p0, Ljdbm/btree/BPage;->_isLeaf:Z

    const-string v3, " "

    const-string v4, "] "

    const-string v5, "BPage ["

    if-eqz v2, :cond_1

    .line 882
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Ljdbm/btree/BPage;->_keys:[Ljava/lang/Object;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Ljdbm/btree/BPage;->_values:[Ljava/lang/Object;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 883
    goto :goto_2

    .line 884
    :cond_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Ljdbm/btree/BPage;->_keys:[Ljava/lang/Object;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Ljdbm/btree/BPage;->_children:[J

    aget-wide v4, v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 880
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 887
    .end local v1    # "i":I
    :cond_2
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "--------------------------------------"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 888
    return-void
.end method

.method private findChildren(Ljava/lang/Object;)I
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;

    .line 676
    iget v0, p0, Ljdbm/btree/BPage;->_first:I

    .line 677
    .local v0, "left":I
    iget-object v1, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget v1, v1, Ljdbm/btree/BTree;->_pageSize:I

    add-int/lit8 v1, v1, -0x1

    .line 680
    .local v1, "right":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 681
    add-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    .line 682
    .local v2, "middle":I
    iget-object v3, p0, Ljdbm/btree/BPage;->_keys:[Ljava/lang/Object;

    aget-object v3, v3, v2

    invoke-direct {p0, v3, p1}, Ljdbm/btree/BPage;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_0

    .line 683
    add-int/lit8 v0, v2, 0x1

    .line 684
    goto :goto_1

    .line 685
    :cond_0
    move v1, v2

    .line 687
    .end local v2    # "middle":I
    :goto_1
    goto :goto_0

    .line 688
    :cond_1
    return v1
.end method

.method private static insertChild(Ljdbm/btree/BPage;ILjava/lang/Object;J)V
    .locals 5
    .param p0, "page"    # Ljdbm/btree/BPage;
    .param p1, "index"    # I
    .param p2, "key"    # Ljava/lang/Object;
    .param p3, "child"    # J

    .line 718
    iget-object v0, p0, Ljdbm/btree/BPage;->_keys:[Ljava/lang/Object;

    .line 719
    .local v0, "keys":[Ljava/lang/Object;
    iget-object v1, p0, Ljdbm/btree/BPage;->_children:[J

    .line 720
    .local v1, "children":[J
    iget v2, p0, Ljdbm/btree/BPage;->_first:I

    .line 721
    .local v2, "start":I
    iget v3, p0, Ljdbm/btree/BPage;->_first:I

    sub-int v3, p1, v3

    add-int/lit8 v3, v3, 0x1

    .line 724
    .local v3, "count":I
    add-int/lit8 v4, v2, -0x1

    invoke-static {v0, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 725
    add-int/lit8 v4, v2, -0x1

    invoke-static {v1, v2, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 726
    iget v4, p0, Ljdbm/btree/BPage;->_first:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Ljdbm/btree/BPage;->_first:I

    .line 727
    aput-object p2, v0, p1

    .line 728
    aput-wide p3, v1, p1

    .line 729
    return-void
.end method

.method private static insertEntry(Ljdbm/btree/BPage;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .param p0, "page"    # Ljdbm/btree/BPage;
    .param p1, "index"    # I
    .param p2, "key"    # Ljava/lang/Object;
    .param p3, "value"    # Ljava/lang/Object;

    .line 698
    iget-object v0, p0, Ljdbm/btree/BPage;->_keys:[Ljava/lang/Object;

    .line 699
    .local v0, "keys":[Ljava/lang/Object;
    iget-object v1, p0, Ljdbm/btree/BPage;->_values:[Ljava/lang/Object;

    .line 700
    .local v1, "values":[Ljava/lang/Object;
    iget v2, p0, Ljdbm/btree/BPage;->_first:I

    .line 701
    .local v2, "start":I
    iget v3, p0, Ljdbm/btree/BPage;->_first:I

    sub-int v3, p1, v3

    add-int/lit8 v3, v3, 0x1

    .line 704
    .local v3, "count":I
    add-int/lit8 v4, v2, -0x1

    invoke-static {v0, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 705
    add-int/lit8 v4, v2, -0x1

    invoke-static {v1, v2, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 706
    iget v4, p0, Ljdbm/btree/BPage;->_first:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Ljdbm/btree/BPage;->_first:I

    .line 707
    aput-object p2, v0, p1

    .line 708
    aput-object p3, v1, p1

    .line 709
    return-void
.end method

.method private loadBPage(J)Ljdbm/btree/BPage;
    .locals 2
    .param p1, "recid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 826
    iget-object v0, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget-object v0, v0, Ljdbm/btree/BTree;->_recman:Ljdbm/RecordManager;

    invoke-interface {v0, p1, p2, p0}, Ljdbm/RecordManager;->fetch(JLjdbm/helper/Serializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljdbm/btree/BPage;

    .line 827
    .local v0, "child":Ljdbm/btree/BPage;
    iput-wide p1, v0, Ljdbm/btree/BPage;->_recid:J

    .line 828
    iget-object v1, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iput-object v1, v0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    .line 829
    return-object v0
.end method

.method static readByteArray(Ljava/io/ObjectInput;)[B
    .locals 2
    .param p0, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 847
    invoke-interface {p0}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    .line 848
    .local v0, "len":I
    if-gez v0, :cond_0

    .line 849
    const/4 v1, 0x0

    return-object v1

    .line 851
    :cond_0
    new-array v1, v0, [B

    .line 852
    .local v1, "buf":[B
    invoke-interface {p0, v1}, Ljava/io/ObjectInput;->readFully([B)V

    .line 853
    return-object v1
.end method

.method private static removeEntry(Ljdbm/btree/BPage;I)V
    .locals 6
    .param p0, "page"    # Ljdbm/btree/BPage;
    .param p1, "index"    # I

    .line 736
    iget-object v0, p0, Ljdbm/btree/BPage;->_keys:[Ljava/lang/Object;

    .line 737
    .local v0, "keys":[Ljava/lang/Object;
    iget-object v1, p0, Ljdbm/btree/BPage;->_values:[Ljava/lang/Object;

    .line 738
    .local v1, "values":[Ljava/lang/Object;
    iget v2, p0, Ljdbm/btree/BPage;->_first:I

    .line 739
    .local v2, "start":I
    iget v3, p0, Ljdbm/btree/BPage;->_first:I

    sub-int v3, p1, v3

    .line 741
    .local v3, "count":I
    add-int/lit8 v4, v2, 0x1

    invoke-static {v0, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 742
    const/4 v4, 0x0

    aput-object v4, v0, v2

    .line 743
    add-int/lit8 v5, v2, 0x1

    invoke-static {v1, v2, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 744
    aput-object v4, v1, v2

    .line 745
    iget v4, p0, Ljdbm/btree/BPage;->_first:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljdbm/btree/BPage;->_first:I

    .line 746
    return-void
.end method

.method private static setChild(Ljdbm/btree/BPage;ILjava/lang/Object;J)V
    .locals 1
    .param p0, "page"    # Ljdbm/btree/BPage;
    .param p1, "index"    # I
    .param p2, "key"    # Ljava/lang/Object;
    .param p3, "recid"    # J

    .line 783
    iget-object v0, p0, Ljdbm/btree/BPage;->_keys:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 784
    iget-object v0, p0, Ljdbm/btree/BPage;->_children:[J

    aput-wide p3, v0, p1

    .line 785
    return-void
.end method

.method private static setEntry(Ljdbm/btree/BPage;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "page"    # Ljdbm/btree/BPage;
    .param p1, "index"    # I
    .param p2, "key"    # Ljava/lang/Object;
    .param p3, "value"    # Ljava/lang/Object;

    .line 773
    iget-object v0, p0, Ljdbm/btree/BPage;->_keys:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 774
    iget-object v0, p0, Ljdbm/btree/BPage;->_values:[Ljava/lang/Object;

    aput-object p3, v0, p1

    .line 775
    return-void
.end method

.method static writeByteArray(Ljava/io/ObjectOutput;[B)V
    .locals 1
    .param p0, "out"    # Ljava/io/ObjectOutput;
    .param p1, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 860
    if-nez p1, :cond_0

    .line 861
    const/4 v0, -0x1

    invoke-interface {p0, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 862
    goto :goto_0

    .line 863
    :cond_0
    array-length v0, p1

    invoke-interface {p0, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 864
    invoke-interface {p0, p1}, Ljava/io/ObjectOutput;->write([B)V

    .line 866
    :goto_0
    return-void
.end method


# virtual methods
.method assertConsistencyRecursive(I)V
    .locals 4
    .param p1, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 933
    invoke-direct {p0}, Ljdbm/btree/BPage;->assertConsistency()V

    .line 934
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_2

    .line 935
    iget v0, p0, Ljdbm/btree/BPage;->_first:I

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget v1, v1, Ljdbm/btree/BTree;->_pageSize:I

    if-ge v0, v1, :cond_2

    .line 936
    iget-object v1, p0, Ljdbm/btree/BPage;->_keys:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    goto :goto_1

    .line 937
    :cond_0
    invoke-virtual {p0, v0}, Ljdbm/btree/BPage;->childBPage(I)Ljdbm/btree/BPage;

    move-result-object v1

    .line 938
    .local v1, "child":Ljdbm/btree/BPage;
    iget-object v2, p0, Ljdbm/btree/BPage;->_keys:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, [B

    check-cast v2, [B

    invoke-virtual {v1}, Ljdbm/btree/BPage;->getLargestKey()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Ljdbm/btree/BPage;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_1

    .line 943
    invoke-virtual {v1, p1}, Ljdbm/btree/BPage;->assertConsistencyRecursive(I)V

    .line 935
    .end local v1    # "child":Ljdbm/btree/BPage;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 939
    .restart local v1    # "child":Ljdbm/btree/BPage;
    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Ljdbm/btree/BPage;->dump(I)V

    .line 940
    invoke-direct {v1, v2}, Ljdbm/btree/BPage;->dump(I)V

    .line 941
    new-instance v2, Ljava/lang/Error;

    const-string v3, "Invalid child subordinate key"

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 946
    .end local v0    # "i":I
    .end local v1    # "child":Ljdbm/btree/BPage;
    :cond_2
    :goto_1
    return-void
.end method

.method childBPage(I)Ljdbm/btree/BPage;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 816
    iget-object v0, p0, Ljdbm/btree/BPage;->_children:[J

    aget-wide v0, v0, p1

    invoke-direct {p0, v0, v1}, Ljdbm/btree/BPage;->loadBPage(J)Ljdbm/btree/BPage;

    move-result-object v0

    return-object v0
.end method

.method public deserialize([B)Ljava/lang/Object;
    .locals 7
    .param p1, "serialized"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 963
    new-instance v0, Ljdbm/btree/BPage;

    invoke-direct {v0}, Ljdbm/btree/BPage;-><init>()V

    .line 964
    .local v0, "bpage":Ljdbm/btree/BPage;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 965
    .local v1, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 967
    .local v2, "ois":Ljava/io/ObjectInputStream;
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v3

    iput-boolean v3, v0, Ljdbm/btree/BPage;->_isLeaf:Z

    .line 968
    if-eqz v3, :cond_0

    .line 969
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v3

    iput-wide v3, v0, Ljdbm/btree/BPage;->_previous:J

    .line 970
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v3

    iput-wide v3, v0, Ljdbm/btree/BPage;->_next:J

    .line 973
    :cond_0
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    iput v3, v0, Ljdbm/btree/BPage;->_first:I

    .line 975
    iget-object v3, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget v3, v3, Ljdbm/btree/BTree;->_pageSize:I

    new-array v3, v3, [Ljava/lang/Object;

    iput-object v3, v0, Ljdbm/btree/BPage;->_keys:[Ljava/lang/Object;

    .line 977
    :try_start_0
    iget v3, v0, Ljdbm/btree/BPage;->_first:I

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget v4, v4, Ljdbm/btree/BTree;->_pageSize:I

    if-ge v3, v4, :cond_3

    .line 978
    iget-object v4, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget-object v4, v4, Ljdbm/btree/BTree;->_keySerializer:Ljdbm/helper/Serializer;

    if-nez v4, :cond_1

    .line 979
    iget-object v4, v0, Ljdbm/btree/BPage;->_keys:[Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v3

    .line 980
    goto :goto_1

    .line 981
    :cond_1
    invoke-static {v2}, Ljdbm/btree/BPage;->readByteArray(Ljava/io/ObjectInput;)[B

    move-result-object v4

    move-object p1, v4

    .line 982
    if-eqz p1, :cond_2

    .line 983
    iget-object v4, v0, Ljdbm/btree/BPage;->_keys:[Ljava/lang/Object;

    iget-object v5, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget-object v5, v5, Ljdbm/btree/BTree;->_keySerializer:Ljdbm/helper/Serializer;

    invoke-interface {v5, p1}, Ljdbm/helper/Serializer;->deserialize([B)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 977
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 989
    .end local v3    # "i":I
    :cond_3
    nop

    .line 991
    iget-boolean v3, v0, Ljdbm/btree/BPage;->_isLeaf:Z

    if-eqz v3, :cond_7

    .line 992
    iget-object v3, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget v3, v3, Ljdbm/btree/BTree;->_pageSize:I

    new-array v3, v3, [Ljava/lang/Object;

    iput-object v3, v0, Ljdbm/btree/BPage;->_values:[Ljava/lang/Object;

    .line 994
    :try_start_1
    iget v3, v0, Ljdbm/btree/BPage;->_first:I

    .restart local v3    # "i":I
    :goto_2
    iget-object v4, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget v4, v4, Ljdbm/btree/BTree;->_pageSize:I

    if-ge v3, v4, :cond_6

    .line 995
    iget-object v4, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget-object v4, v4, Ljdbm/btree/BTree;->_valueSerializer:Ljdbm/helper/Serializer;

    if-nez v4, :cond_4

    .line 996
    iget-object v4, v0, Ljdbm/btree/BPage;->_values:[Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v3

    .line 997
    goto :goto_3

    .line 998
    :cond_4
    invoke-static {v2}, Ljdbm/btree/BPage;->readByteArray(Ljava/io/ObjectInput;)[B

    move-result-object v4

    move-object p1, v4

    .line 999
    if-eqz p1, :cond_5

    .line 1000
    iget-object v4, v0, Ljdbm/btree/BPage;->_values:[Ljava/lang/Object;

    iget-object v5, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget-object v5, v5, Ljdbm/btree/BTree;->_valueSerializer:Ljdbm/helper/Serializer;

    invoke-interface {v5, p1}, Ljdbm/helper/Serializer;->deserialize([B)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v3
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 994
    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1006
    .end local v3    # "i":I
    :cond_6
    goto :goto_5

    .line 1004
    :catch_0
    move-exception v3

    .line 1005
    .local v3, "except":Ljava/lang/ClassNotFoundException;
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1008
    .end local v3    # "except":Ljava/lang/ClassNotFoundException;
    :cond_7
    iget-object v3, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget v3, v3, Ljdbm/btree/BTree;->_pageSize:I

    new-array v3, v3, [J

    iput-object v3, v0, Ljdbm/btree/BPage;->_children:[J

    .line 1009
    iget v3, v0, Ljdbm/btree/BPage;->_first:I

    .local v3, "i":I
    :goto_4
    iget-object v4, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget v4, v4, Ljdbm/btree/BTree;->_pageSize:I

    if-ge v3, v4, :cond_8

    .line 1010
    iget-object v4, v0, Ljdbm/btree/BPage;->_children:[J

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v5

    aput-wide v5, v4, v3

    .line 1009
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1013
    .end local v3    # "i":I
    :cond_8
    :goto_5
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    .line 1014
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    .line 1016
    return-object v0

    .line 987
    :catch_1
    move-exception v3

    .line 988
    .local v3, "except":Ljava/lang/ClassNotFoundException;
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method dumpRecursive(II)V
    .locals 2
    .param p1, "height"    # I
    .param p2, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 898
    add-int/lit8 p1, p1, -0x1

    .line 899
    add-int/lit8 p2, p2, 0x1

    .line 900
    if-lez p1, :cond_1

    .line 901
    iget v0, p0, Ljdbm/btree/BPage;->_first:I

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget v1, v1, Ljdbm/btree/BTree;->_pageSize:I

    if-ge v0, v1, :cond_1

    .line 902
    iget-object v1, p0, Ljdbm/btree/BPage;->_keys:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    goto :goto_1

    .line 903
    :cond_0
    invoke-virtual {p0, v0}, Ljdbm/btree/BPage;->childBPage(I)Ljdbm/btree/BPage;

    move-result-object v1

    .line 904
    .local v1, "child":Ljdbm/btree/BPage;
    invoke-direct {v1, p2}, Ljdbm/btree/BPage;->dump(I)V

    .line 905
    invoke-virtual {v1, p1, p2}, Ljdbm/btree/BPage;->dumpRecursive(II)V

    .line 901
    .end local v1    # "child":Ljdbm/btree/BPage;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 908
    .end local v0    # "i":I
    :cond_1
    :goto_1
    return-void
.end method

.method find(ILjava/lang/Object;)Ljdbm/helper/TupleBrowser;
    .locals 3
    .param p1, "height"    # I
    .param p2, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    invoke-direct {p0, p2}, Ljdbm/btree/BPage;->findChildren(Ljava/lang/Object;)I

    move-result v0

    .line 278
    .local v0, "index":I
    add-int/lit8 p1, p1, -0x1

    .line 280
    if-nez p1, :cond_0

    .line 282
    new-instance v1, Ljdbm/btree/BPage$Browser;

    invoke-direct {v1, p0, v0}, Ljdbm/btree/BPage$Browser;-><init>(Ljdbm/btree/BPage;I)V

    return-object v1

    .line 285
    :cond_0
    invoke-virtual {p0, v0}, Ljdbm/btree/BPage;->childBPage(I)Ljdbm/btree/BPage;

    move-result-object v1

    .line 286
    .local v1, "child":Ljdbm/btree/BPage;
    invoke-virtual {v1, p1, p2}, Ljdbm/btree/BPage;->find(ILjava/lang/Object;)Ljdbm/helper/TupleBrowser;

    move-result-object v2

    return-object v2
.end method

.method findFirst()Ljdbm/helper/TupleBrowser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 299
    iget-boolean v0, p0, Ljdbm/btree/BPage;->_isLeaf:Z

    if-eqz v0, :cond_0

    .line 300
    new-instance v0, Ljdbm/btree/BPage$Browser;

    iget v1, p0, Ljdbm/btree/BPage;->_first:I

    invoke-direct {v0, p0, v1}, Ljdbm/btree/BPage$Browser;-><init>(Ljdbm/btree/BPage;I)V

    return-object v0

    .line 302
    :cond_0
    iget v0, p0, Ljdbm/btree/BPage;->_first:I

    invoke-virtual {p0, v0}, Ljdbm/btree/BPage;->childBPage(I)Ljdbm/btree/BPage;

    move-result-object v0

    .line 303
    .local v0, "child":Ljdbm/btree/BPage;
    invoke-virtual {v0}, Ljdbm/btree/BPage;->findFirst()Ljdbm/helper/TupleBrowser;

    move-result-object v1

    return-object v1
.end method

.method getLargestKey()Ljava/lang/Object;
    .locals 2

    .line 233
    iget-object v0, p0, Ljdbm/btree/BPage;->_keys:[Ljava/lang/Object;

    iget-object v1, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget v1, v1, Ljdbm/btree/BTree;->_pageSize:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method insert(ILjava/lang/Object;Ljava/lang/Object;Z)Ljdbm/btree/BPage$InsertResult;
    .locals 11
    .param p1, "height"    # I
    .param p2, "key"    # Ljava/lang/Object;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "replace"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 327
    invoke-direct {p0, p2}, Ljdbm/btree/BPage;->findChildren(Ljava/lang/Object;)I

    move-result v0

    .line 329
    .local v0, "index":I
    add-int/lit8 p1, p1, -0x1

    .line 330
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 332
    new-instance v2, Ljdbm/btree/BPage$InsertResult;

    invoke-direct {v2}, Ljdbm/btree/BPage$InsertResult;-><init>()V

    .line 335
    .local v2, "result":Ljdbm/btree/BPage$InsertResult;
    const-wide/16 v3, -0x1

    .line 340
    .local v3, "overflow":J
    iget-object v5, p0, Ljdbm/btree/BPage;->_keys:[Ljava/lang/Object;

    aget-object v5, v5, v0

    invoke-direct {p0, p2, v5}, Ljdbm/btree/BPage;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-nez v5, :cond_4

    .line 345
    iget-object v1, p0, Ljdbm/btree/BPage;->_values:[Ljava/lang/Object;

    aget-object v1, v1, v0

    iput-object v1, v2, Ljdbm/btree/BPage$InsertResult;->_existing:Ljava/lang/Object;

    .line 346
    if-eqz p4, :cond_0

    .line 347
    iget-object v1, p0, Ljdbm/btree/BPage;->_values:[Ljava/lang/Object;

    aput-object p3, v1, v0

    .line 348
    iget-object v1, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget-object v1, v1, Ljdbm/btree/BTree;->_recman:Ljdbm/RecordManager;

    iget-wide v5, p0, Ljdbm/btree/BPage;->_recid:J

    invoke-interface {v1, v5, v6, p0, p0}, Ljdbm/RecordManager;->update(JLjava/lang/Object;Ljdbm/helper/Serializer;)V

    .line 351
    :cond_0
    return-object v2

    .line 355
    .end local v2    # "result":Ljdbm/btree/BPage$InsertResult;
    .end local v3    # "overflow":J
    :cond_1
    invoke-virtual {p0, v0}, Ljdbm/btree/BPage;->childBPage(I)Ljdbm/btree/BPage;

    move-result-object v2

    .line 356
    .local v2, "child":Ljdbm/btree/BPage;
    invoke-virtual {v2, p1, p2, p3, p4}, Ljdbm/btree/BPage;->insert(ILjava/lang/Object;Ljava/lang/Object;Z)Ljdbm/btree/BPage$InsertResult;

    move-result-object v3

    .line 358
    .local v3, "result":Ljdbm/btree/BPage$InsertResult;
    iget-object v4, v3, Ljdbm/btree/BPage$InsertResult;->_existing:Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 360
    return-object v3

    .line 363
    :cond_2
    iget-object v4, v3, Ljdbm/btree/BPage$InsertResult;->_overflow:Ljdbm/btree/BPage;

    if-nez v4, :cond_3

    .line 365
    return-object v3

    .line 373
    :cond_3
    iget-object v4, v3, Ljdbm/btree/BPage$InsertResult;->_overflow:Ljdbm/btree/BPage;

    invoke-virtual {v4}, Ljdbm/btree/BPage;->getLargestKey()Ljava/lang/Object;

    move-result-object p2

    .line 374
    iget-object v4, v3, Ljdbm/btree/BPage$InsertResult;->_overflow:Ljdbm/btree/BPage;

    iget-wide v4, v4, Ljdbm/btree/BPage;->_recid:J

    .line 377
    .local v4, "overflow":J
    iget-object v6, p0, Ljdbm/btree/BPage;->_keys:[Ljava/lang/Object;

    invoke-virtual {v2}, Ljdbm/btree/BPage;->getLargestKey()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v0

    .line 380
    iput-object v1, v3, Ljdbm/btree/BPage$InsertResult;->_overflow:Ljdbm/btree/BPage;

    move-object v2, v3

    move-wide v3, v4

    .line 385
    .end local v4    # "overflow":J
    .local v2, "result":Ljdbm/btree/BPage$InsertResult;
    .local v3, "overflow":J
    :cond_4
    invoke-virtual {p0}, Ljdbm/btree/BPage;->isFull()Z

    move-result v5

    if-nez v5, :cond_6

    .line 386
    if-nez p1, :cond_5

    .line 387
    add-int/lit8 v1, v0, -0x1

    invoke-static {p0, v1, p2, p3}, Ljdbm/btree/BPage;->insertEntry(Ljdbm/btree/BPage;ILjava/lang/Object;Ljava/lang/Object;)V

    .line 388
    goto :goto_0

    .line 389
    :cond_5
    add-int/lit8 v1, v0, -0x1

    invoke-static {p0, v1, p2, v3, v4}, Ljdbm/btree/BPage;->insertChild(Ljdbm/btree/BPage;ILjava/lang/Object;J)V

    .line 391
    :goto_0
    iget-object v1, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget-object v1, v1, Ljdbm/btree/BTree;->_recman:Ljdbm/RecordManager;

    iget-wide v5, p0, Ljdbm/btree/BPage;->_recid:J

    invoke-interface {v1, v5, v6, p0, p0}, Ljdbm/RecordManager;->update(JLjava/lang/Object;Ljdbm/helper/Serializer;)V

    .line 392
    return-object v2

    .line 396
    :cond_6
    iget-object v5, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget v5, v5, Ljdbm/btree/BTree;->_pageSize:I

    shr-int/lit8 v5, v5, 0x1

    .line 397
    .local v5, "half":I
    new-instance v6, Ljdbm/btree/BPage;

    iget-object v7, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget-boolean v8, p0, Ljdbm/btree/BPage;->_isLeaf:Z

    invoke-direct {v6, v7, v8}, Ljdbm/btree/BPage;-><init>(Ljdbm/btree/BTree;Z)V

    .line 398
    .local v6, "newPage":Ljdbm/btree/BPage;
    const/4 v7, 0x0

    if-ge v0, v5, :cond_8

    .line 404
    if-nez p1, :cond_7

    .line 405
    invoke-static {p0, v7, v6, v5, v0}, Ljdbm/btree/BPage;->copyEntries(Ljdbm/btree/BPage;ILjdbm/btree/BPage;II)V

    .line 406
    add-int v7, v5, v0

    invoke-static {v6, v7, p2, p3}, Ljdbm/btree/BPage;->setEntry(Ljdbm/btree/BPage;ILjava/lang/Object;Ljava/lang/Object;)V

    .line 407
    add-int v7, v5, v0

    add-int/lit8 v7, v7, 0x1

    sub-int v8, v5, v0

    add-int/lit8 v8, v8, -0x1

    invoke-static {p0, v0, v6, v7, v8}, Ljdbm/btree/BPage;->copyEntries(Ljdbm/btree/BPage;ILjdbm/btree/BPage;II)V

    .line 408
    goto :goto_1

    .line 409
    :cond_7
    invoke-static {p0, v7, v6, v5, v0}, Ljdbm/btree/BPage;->copyChildren(Ljdbm/btree/BPage;ILjdbm/btree/BPage;II)V

    .line 410
    add-int v7, v5, v0

    invoke-static {v6, v7, p2, v3, v4}, Ljdbm/btree/BPage;->setChild(Ljdbm/btree/BPage;ILjava/lang/Object;J)V

    .line 411
    add-int v7, v5, v0

    add-int/lit8 v7, v7, 0x1

    sub-int v8, v5, v0

    add-int/lit8 v8, v8, -0x1

    invoke-static {p0, v0, v6, v7, v8}, Ljdbm/btree/BPage;->copyChildren(Ljdbm/btree/BPage;ILjdbm/btree/BPage;II)V

    .line 413
    goto :goto_1

    .line 419
    :cond_8
    if-nez p1, :cond_9

    .line 420
    invoke-static {p0, v7, v6, v5, v5}, Ljdbm/btree/BPage;->copyEntries(Ljdbm/btree/BPage;ILjdbm/btree/BPage;II)V

    .line 421
    add-int/lit8 v7, v5, -0x1

    sub-int v8, v0, v5

    invoke-static {p0, v5, p0, v7, v8}, Ljdbm/btree/BPage;->copyEntries(Ljdbm/btree/BPage;ILjdbm/btree/BPage;II)V

    .line 422
    add-int/lit8 v7, v0, -0x1

    invoke-static {p0, v7, p2, p3}, Ljdbm/btree/BPage;->setEntry(Ljdbm/btree/BPage;ILjava/lang/Object;Ljava/lang/Object;)V

    .line 423
    goto :goto_1

    .line 424
    :cond_9
    invoke-static {p0, v7, v6, v5, v5}, Ljdbm/btree/BPage;->copyChildren(Ljdbm/btree/BPage;ILjdbm/btree/BPage;II)V

    .line 425
    add-int/lit8 v7, v5, -0x1

    sub-int v8, v0, v5

    invoke-static {p0, v5, p0, v7, v8}, Ljdbm/btree/BPage;->copyChildren(Ljdbm/btree/BPage;ILjdbm/btree/BPage;II)V

    .line 426
    add-int/lit8 v7, v0, -0x1

    invoke-static {p0, v7, p2, v3, v4}, Ljdbm/btree/BPage;->setChild(Ljdbm/btree/BPage;ILjava/lang/Object;J)V

    .line 430
    :goto_1
    add-int/lit8 v7, v5, -0x1

    iput v7, p0, Ljdbm/btree/BPage;->_first:I

    .line 433
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    iget v8, p0, Ljdbm/btree/BPage;->_first:I

    if-ge v7, v8, :cond_b

    .line 434
    if-nez p1, :cond_a

    .line 435
    invoke-static {p0, v7, v1, v1}, Ljdbm/btree/BPage;->setEntry(Ljdbm/btree/BPage;ILjava/lang/Object;Ljava/lang/Object;)V

    .line 436
    goto :goto_3

    .line 437
    :cond_a
    const-wide/16 v8, -0x1

    invoke-static {p0, v7, v1, v8, v9}, Ljdbm/btree/BPage;->setChild(Ljdbm/btree/BPage;ILjava/lang/Object;J)V

    .line 433
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 441
    .end local v7    # "i":I
    :cond_b
    iget-boolean v1, p0, Ljdbm/btree/BPage;->_isLeaf:Z

    if-eqz v1, :cond_d

    .line 443
    iget-wide v7, p0, Ljdbm/btree/BPage;->_previous:J

    iput-wide v7, v6, Ljdbm/btree/BPage;->_previous:J

    .line 444
    iget-wide v7, p0, Ljdbm/btree/BPage;->_recid:J

    iput-wide v7, v6, Ljdbm/btree/BPage;->_next:J

    .line 445
    iget-wide v7, p0, Ljdbm/btree/BPage;->_previous:J

    const-wide/16 v9, 0x0

    cmp-long v1, v7, v9

    if-eqz v1, :cond_c

    .line 446
    invoke-direct {p0, v7, v8}, Ljdbm/btree/BPage;->loadBPage(J)Ljdbm/btree/BPage;

    move-result-object v1

    .line 447
    .local v1, "previous":Ljdbm/btree/BPage;
    iget-wide v7, v6, Ljdbm/btree/BPage;->_recid:J

    iput-wide v7, v1, Ljdbm/btree/BPage;->_next:J

    .line 448
    iget-object v7, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget-object v7, v7, Ljdbm/btree/BTree;->_recman:Ljdbm/RecordManager;

    iget-wide v8, p0, Ljdbm/btree/BPage;->_previous:J

    invoke-interface {v7, v8, v9, v1, p0}, Ljdbm/RecordManager;->update(JLjava/lang/Object;Ljdbm/helper/Serializer;)V

    .line 450
    .end local v1    # "previous":Ljdbm/btree/BPage;
    :cond_c
    iget-wide v7, v6, Ljdbm/btree/BPage;->_recid:J

    iput-wide v7, p0, Ljdbm/btree/BPage;->_previous:J

    .line 453
    :cond_d
    iget-object v1, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget-object v1, v1, Ljdbm/btree/BTree;->_recman:Ljdbm/RecordManager;

    iget-wide v7, p0, Ljdbm/btree/BPage;->_recid:J

    invoke-interface {v1, v7, v8, p0, p0}, Ljdbm/RecordManager;->update(JLjava/lang/Object;Ljdbm/helper/Serializer;)V

    .line 454
    iget-object v1, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget-object v1, v1, Ljdbm/btree/BTree;->_recman:Ljdbm/RecordManager;

    iget-wide v7, v6, Ljdbm/btree/BPage;->_recid:J

    invoke-interface {v1, v7, v8, v6, p0}, Ljdbm/RecordManager;->update(JLjava/lang/Object;Ljdbm/helper/Serializer;)V

    .line 456
    iput-object v6, v2, Ljdbm/btree/BPage$InsertResult;->_overflow:Ljdbm/btree/BPage;

    .line 457
    return-object v2
.end method

.method isEmpty()Z
    .locals 4

    .line 242
    iget-boolean v0, p0, Ljdbm/btree/BPage;->_isLeaf:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 243
    iget v0, p0, Ljdbm/btree/BPage;->_first:I

    iget-object v3, p0, Ljdbm/btree/BPage;->_values:[Ljava/lang/Object;

    array-length v3, v3

    sub-int/2addr v3, v2

    if-ne v0, v3, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 245
    :cond_1
    iget v0, p0, Ljdbm/btree/BPage;->_first:I

    iget-object v3, p0, Ljdbm/btree/BPage;->_children:[J

    array-length v3, v3

    sub-int/2addr v3, v2

    if-ne v0, v3, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method isFull()Z
    .locals 1

    .line 254
    iget v0, p0, Ljdbm/btree/BPage;->_first:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method remove(ILjava/lang/Object;)Ljdbm/btree/BPage$RemoveResult;
    .locals 16
    .param p1, "height"    # I
    .param p2, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 473
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget v2, v2, Ljdbm/btree/BTree;->_pageSize:I

    div-int/lit8 v2, v2, 0x2

    .line 474
    .local v2, "half":I
    invoke-direct {v0, v1}, Ljdbm/btree/BPage;->findChildren(Ljava/lang/Object;)I

    move-result v3

    .line 476
    .local v3, "index":I
    add-int/lit8 v4, p1, -0x1

    .line 477
    .end local p1    # "height":I
    .local v4, "height":I
    const/4 v5, 0x1

    if-nez v4, :cond_1

    .line 479
    iget-object v6, v0, Ljdbm/btree/BPage;->_keys:[Ljava/lang/Object;

    aget-object v6, v6, v3

    invoke-direct {v0, v6, v1}, Ljdbm/btree/BPage;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-nez v6, :cond_0

    .line 482
    new-instance v6, Ljdbm/btree/BPage$RemoveResult;

    invoke-direct {v6}, Ljdbm/btree/BPage$RemoveResult;-><init>()V

    .line 483
    .local v6, "result":Ljdbm/btree/BPage$RemoveResult;
    iget-object v7, v0, Ljdbm/btree/BPage;->_values:[Ljava/lang/Object;

    aget-object v7, v7, v3

    iput-object v7, v6, Ljdbm/btree/BPage$RemoveResult;->_value:Ljava/lang/Object;

    .line 484
    invoke-static {v0, v3}, Ljdbm/btree/BPage;->removeEntry(Ljdbm/btree/BPage;I)V

    .line 487
    iget-object v7, v0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget-object v7, v7, Ljdbm/btree/BTree;->_recman:Ljdbm/RecordManager;

    iget-wide v8, v0, Ljdbm/btree/BPage;->_recid:J

    invoke-interface {v7, v8, v9, v0, v0}, Ljdbm/RecordManager;->update(JLjava/lang/Object;Ljdbm/helper/Serializer;)V

    .line 489
    move v10, v5

    goto/16 :goto_c

    .line 480
    .end local v6    # "result":Ljdbm/btree/BPage$RemoveResult;
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Key not found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 491
    :cond_1
    invoke-virtual {v0, v3}, Ljdbm/btree/BPage;->childBPage(I)Ljdbm/btree/BPage;

    move-result-object v6

    .line 492
    .local v6, "child":Ljdbm/btree/BPage;
    invoke-virtual {v6, v4, v1}, Ljdbm/btree/BPage;->remove(ILjava/lang/Object;)Ljdbm/btree/BPage$RemoveResult;

    move-result-object v7

    .line 495
    .local v7, "result":Ljdbm/btree/BPage$RemoveResult;
    iget-object v8, v0, Ljdbm/btree/BPage;->_keys:[Ljava/lang/Object;

    invoke-virtual {v6}, Ljdbm/btree/BPage;->getLargestKey()Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v8, v3

    .line 496
    iget-object v8, v0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget-object v8, v8, Ljdbm/btree/BTree;->_recman:Ljdbm/RecordManager;

    iget-wide v9, v0, Ljdbm/btree/BPage;->_recid:J

    invoke-interface {v8, v9, v10, v0, v0}, Ljdbm/RecordManager;->update(JLjava/lang/Object;Ljdbm/helper/Serializer;)V

    .line 498
    iget-boolean v8, v7, Ljdbm/btree/BPage$RemoveResult;->_underflow:Z

    if-eqz v8, :cond_16

    .line 500
    iget v8, v6, Ljdbm/btree/BPage;->_first:I

    add-int/lit8 v9, v2, 0x1

    if-ne v8, v9, :cond_15

    .line 503
    iget-object v8, v0, Ljdbm/btree/BPage;->_children:[J

    array-length v8, v8

    sub-int/2addr v8, v5

    const-wide/16 v11, -0x1

    const/4 v13, 0x0

    if-ge v3, v8, :cond_b

    .line 505
    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v0, v8}, Ljdbm/btree/BPage;->childBPage(I)Ljdbm/btree/BPage;

    move-result-object v8

    .line 506
    .local v8, "brother":Ljdbm/btree/BPage;
    iget v14, v8, Ljdbm/btree/BPage;->_first:I

    .line 507
    .local v14, "bfirst":I
    if-ge v14, v2, :cond_5

    .line 509
    sub-int v9, v2, v14

    add-int/2addr v9, v5

    div-int/lit8 v9, v9, 0x2

    .line 510
    .local v9, "steal":I
    iget v10, v8, Ljdbm/btree/BPage;->_first:I

    add-int/2addr v10, v9

    iput v10, v8, Ljdbm/btree/BPage;->_first:I

    .line 511
    iget v10, v6, Ljdbm/btree/BPage;->_first:I

    sub-int/2addr v10, v9

    iput v10, v6, Ljdbm/btree/BPage;->_first:I

    .line 512
    iget-boolean v10, v6, Ljdbm/btree/BPage;->_isLeaf:Z

    if-eqz v10, :cond_2

    .line 513
    add-int/lit8 v10, v2, 0x1

    add-int/lit8 v15, v2, 0x1

    sub-int/2addr v15, v9

    add-int/lit8 v5, v2, -0x1

    invoke-static {v6, v10, v6, v15, v5}, Ljdbm/btree/BPage;->copyEntries(Ljdbm/btree/BPage;ILjdbm/btree/BPage;II)V

    .line 514
    mul-int/lit8 v5, v2, 0x2

    sub-int/2addr v5, v9

    invoke-static {v8, v14, v6, v5, v9}, Ljdbm/btree/BPage;->copyEntries(Ljdbm/btree/BPage;ILjdbm/btree/BPage;II)V

    .line 515
    goto :goto_0

    .line 516
    :cond_2
    add-int/lit8 v5, v2, 0x1

    add-int/lit8 v10, v2, 0x1

    sub-int/2addr v10, v9

    add-int/lit8 v15, v2, -0x1

    invoke-static {v6, v5, v6, v10, v15}, Ljdbm/btree/BPage;->copyChildren(Ljdbm/btree/BPage;ILjdbm/btree/BPage;II)V

    .line 517
    mul-int/lit8 v5, v2, 0x2

    sub-int/2addr v5, v9

    invoke-static {v8, v14, v6, v5, v9}, Ljdbm/btree/BPage;->copyChildren(Ljdbm/btree/BPage;ILjdbm/btree/BPage;II)V

    .line 520
    :goto_0
    move v5, v14

    .local v5, "i":I
    :goto_1
    add-int v10, v14, v9

    if-ge v5, v10, :cond_4

    .line 521
    iget-boolean v10, v8, Ljdbm/btree/BPage;->_isLeaf:Z

    if-eqz v10, :cond_3

    .line 522
    invoke-static {v8, v5, v13, v13}, Ljdbm/btree/BPage;->setEntry(Ljdbm/btree/BPage;ILjava/lang/Object;Ljava/lang/Object;)V

    .line 523
    goto :goto_2

    .line 524
    :cond_3
    invoke-static {v8, v5, v13, v11, v12}, Ljdbm/btree/BPage;->setChild(Ljdbm/btree/BPage;ILjava/lang/Object;J)V

    .line 520
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 529
    .end local v5    # "i":I
    :cond_4
    iget-object v5, v0, Ljdbm/btree/BPage;->_keys:[Ljava/lang/Object;

    invoke-virtual {v6}, Ljdbm/btree/BPage;->getLargestKey()Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v5, v3

    .line 534
    iget-object v5, v0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget-object v5, v5, Ljdbm/btree/BTree;->_recman:Ljdbm/RecordManager;

    iget-wide v10, v0, Ljdbm/btree/BPage;->_recid:J

    invoke-interface {v5, v10, v11, v0, v0}, Ljdbm/RecordManager;->update(JLjava/lang/Object;Ljdbm/helper/Serializer;)V

    .line 535
    iget-object v5, v0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget-object v5, v5, Ljdbm/btree/BTree;->_recman:Ljdbm/RecordManager;

    iget-wide v10, v8, Ljdbm/btree/BPage;->_recid:J

    invoke-interface {v5, v10, v11, v8, v0}, Ljdbm/RecordManager;->update(JLjava/lang/Object;Ljdbm/helper/Serializer;)V

    .line 536
    iget-object v5, v0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget-object v5, v5, Ljdbm/btree/BTree;->_recman:Ljdbm/RecordManager;

    iget-wide v10, v6, Ljdbm/btree/BPage;->_recid:J

    invoke-interface {v5, v10, v11, v6, v0}, Ljdbm/RecordManager;->update(JLjava/lang/Object;Ljdbm/helper/Serializer;)V

    .line 538
    .end local v9    # "steal":I
    goto/16 :goto_5

    .line 540
    :cond_5
    iget v5, v8, Ljdbm/btree/BPage;->_first:I

    if-ne v5, v2, :cond_a

    .line 544
    const/4 v5, 0x1

    iput v5, v8, Ljdbm/btree/BPage;->_first:I

    .line 545
    iget-boolean v15, v6, Ljdbm/btree/BPage;->_isLeaf:Z

    if-eqz v15, :cond_6

    .line 546
    add-int/lit8 v15, v2, 0x1

    add-int/lit8 v9, v2, -0x1

    invoke-static {v6, v15, v8, v5, v9}, Ljdbm/btree/BPage;->copyEntries(Ljdbm/btree/BPage;ILjdbm/btree/BPage;II)V

    .line 547
    goto :goto_3

    .line 548
    :cond_6
    add-int/lit8 v9, v2, 0x1

    add-int/lit8 v10, v2, -0x1

    invoke-static {v6, v9, v8, v5, v10}, Ljdbm/btree/BPage;->copyChildren(Ljdbm/btree/BPage;ILjdbm/btree/BPage;II)V

    .line 550
    :goto_3
    iget-object v5, v0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget-object v5, v5, Ljdbm/btree/BTree;->_recman:Ljdbm/RecordManager;

    iget-wide v9, v8, Ljdbm/btree/BPage;->_recid:J

    invoke-interface {v5, v9, v10, v8, v0}, Ljdbm/RecordManager;->update(JLjava/lang/Object;Ljdbm/helper/Serializer;)V

    .line 553
    iget-boolean v5, v0, Ljdbm/btree/BPage;->_isLeaf:Z

    if-eqz v5, :cond_7

    .line 554
    iget v5, v0, Ljdbm/btree/BPage;->_first:I

    add-int/lit8 v9, v5, 0x1

    sub-int v10, v3, v5

    invoke-static {v0, v5, v0, v9, v10}, Ljdbm/btree/BPage;->copyEntries(Ljdbm/btree/BPage;ILjdbm/btree/BPage;II)V

    .line 555
    iget v5, v0, Ljdbm/btree/BPage;->_first:I

    invoke-static {v0, v5, v13, v13}, Ljdbm/btree/BPage;->setEntry(Ljdbm/btree/BPage;ILjava/lang/Object;Ljava/lang/Object;)V

    .line 556
    goto :goto_4

    .line 557
    :cond_7
    iget v5, v0, Ljdbm/btree/BPage;->_first:I

    add-int/lit8 v9, v5, 0x1

    sub-int v10, v3, v5

    invoke-static {v0, v5, v0, v9, v10}, Ljdbm/btree/BPage;->copyChildren(Ljdbm/btree/BPage;ILjdbm/btree/BPage;II)V

    .line 558
    iget v5, v0, Ljdbm/btree/BPage;->_first:I

    invoke-static {v0, v5, v13, v11, v12}, Ljdbm/btree/BPage;->setChild(Ljdbm/btree/BPage;ILjava/lang/Object;J)V

    .line 560
    :goto_4
    iget v5, v0, Ljdbm/btree/BPage;->_first:I

    const/4 v9, 0x1

    add-int/2addr v5, v9

    iput v5, v0, Ljdbm/btree/BPage;->_first:I

    .line 561
    iget-object v5, v0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget-object v5, v5, Ljdbm/btree/BTree;->_recman:Ljdbm/RecordManager;

    iget-wide v9, v0, Ljdbm/btree/BPage;->_recid:J

    invoke-interface {v5, v9, v10, v0, v0}, Ljdbm/RecordManager;->update(JLjava/lang/Object;Ljdbm/helper/Serializer;)V

    .line 564
    iget-wide v9, v6, Ljdbm/btree/BPage;->_previous:J

    const-wide/16 v11, 0x0

    cmp-long v5, v9, v11

    if-eqz v5, :cond_8

    .line 565
    invoke-direct {v0, v9, v10}, Ljdbm/btree/BPage;->loadBPage(J)Ljdbm/btree/BPage;

    move-result-object v5

    .line 566
    .local v5, "prev":Ljdbm/btree/BPage;
    iget-wide v9, v6, Ljdbm/btree/BPage;->_next:J

    iput-wide v9, v5, Ljdbm/btree/BPage;->_next:J

    .line 567
    iget-object v9, v0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget-object v9, v9, Ljdbm/btree/BTree;->_recman:Ljdbm/RecordManager;

    iget-wide v10, v5, Ljdbm/btree/BPage;->_recid:J

    invoke-interface {v9, v10, v11, v5, v0}, Ljdbm/RecordManager;->update(JLjava/lang/Object;Ljdbm/helper/Serializer;)V

    .line 569
    .end local v5    # "prev":Ljdbm/btree/BPage;
    :cond_8
    iget-wide v9, v6, Ljdbm/btree/BPage;->_next:J

    const-wide/16 v11, 0x0

    cmp-long v5, v9, v11

    if-eqz v5, :cond_9

    .line 570
    invoke-direct {v0, v9, v10}, Ljdbm/btree/BPage;->loadBPage(J)Ljdbm/btree/BPage;

    move-result-object v5

    .line 571
    .local v5, "next":Ljdbm/btree/BPage;
    iget-wide v9, v6, Ljdbm/btree/BPage;->_previous:J

    iput-wide v9, v5, Ljdbm/btree/BPage;->_previous:J

    .line 572
    iget-object v9, v0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget-object v9, v9, Ljdbm/btree/BTree;->_recman:Ljdbm/RecordManager;

    iget-wide v10, v5, Ljdbm/btree/BPage;->_recid:J

    invoke-interface {v9, v10, v11, v5, v0}, Ljdbm/RecordManager;->update(JLjava/lang/Object;Ljdbm/helper/Serializer;)V

    .line 576
    .end local v5    # "next":Ljdbm/btree/BPage;
    :cond_9
    iget-object v5, v0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget-object v5, v5, Ljdbm/btree/BTree;->_recman:Ljdbm/RecordManager;

    iget-wide v9, v6, Ljdbm/btree/BPage;->_recid:J

    invoke-interface {v5, v9, v10}, Ljdbm/RecordManager;->delete(J)V

    .line 578
    .end local v8    # "brother":Ljdbm/btree/BPage;
    .end local v14    # "bfirst":I
    :goto_5
    const/4 v10, 0x1

    goto/16 :goto_b

    .line 541
    .restart local v8    # "brother":Ljdbm/btree/BPage;
    .restart local v14    # "bfirst":I
    :cond_a
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v9, "Error during underflow [2]"

    invoke-direct {v5, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 580
    .end local v8    # "brother":Ljdbm/btree/BPage;
    .end local v14    # "bfirst":I
    :cond_b
    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v0, v5}, Ljdbm/btree/BPage;->childBPage(I)Ljdbm/btree/BPage;

    move-result-object v5

    .line 581
    .local v5, "brother":Ljdbm/btree/BPage;
    iget v8, v5, Ljdbm/btree/BPage;->_first:I

    .line 582
    .local v8, "bfirst":I
    if-ge v8, v2, :cond_f

    .line 584
    sub-int v9, v2, v8

    const/4 v10, 0x1

    add-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    .line 585
    .restart local v9    # "steal":I
    iget v10, v5, Ljdbm/btree/BPage;->_first:I

    add-int/2addr v10, v9

    iput v10, v5, Ljdbm/btree/BPage;->_first:I

    .line 586
    iget v10, v6, Ljdbm/btree/BPage;->_first:I

    sub-int/2addr v10, v9

    iput v10, v6, Ljdbm/btree/BPage;->_first:I

    .line 587
    iget-boolean v10, v6, Ljdbm/btree/BPage;->_isLeaf:Z

    if-eqz v10, :cond_c

    .line 588
    mul-int/lit8 v10, v2, 0x2

    sub-int/2addr v10, v9

    add-int/lit8 v14, v2, 0x1

    sub-int/2addr v14, v9

    invoke-static {v5, v10, v6, v14, v9}, Ljdbm/btree/BPage;->copyEntries(Ljdbm/btree/BPage;ILjdbm/btree/BPage;II)V

    .line 590
    add-int v10, v8, v9

    mul-int/lit8 v14, v2, 0x2

    sub-int/2addr v14, v8

    sub-int/2addr v14, v9

    invoke-static {v5, v8, v5, v10, v14}, Ljdbm/btree/BPage;->copyEntries(Ljdbm/btree/BPage;ILjdbm/btree/BPage;II)V

    .line 592
    goto :goto_6

    .line 593
    :cond_c
    mul-int/lit8 v10, v2, 0x2

    sub-int/2addr v10, v9

    add-int/lit8 v14, v2, 0x1

    sub-int/2addr v14, v9

    invoke-static {v5, v10, v6, v14, v9}, Ljdbm/btree/BPage;->copyChildren(Ljdbm/btree/BPage;ILjdbm/btree/BPage;II)V

    .line 595
    add-int v10, v8, v9

    mul-int/lit8 v14, v2, 0x2

    sub-int/2addr v14, v8

    sub-int/2addr v14, v9

    invoke-static {v5, v8, v5, v10, v14}, Ljdbm/btree/BPage;->copyChildren(Ljdbm/btree/BPage;ILjdbm/btree/BPage;II)V

    .line 599
    :goto_6
    move v10, v8

    .local v10, "i":I
    :goto_7
    add-int v14, v8, v9

    if-ge v10, v14, :cond_e

    .line 600
    iget-boolean v14, v5, Ljdbm/btree/BPage;->_isLeaf:Z

    if-eqz v14, :cond_d

    .line 601
    invoke-static {v5, v10, v13, v13}, Ljdbm/btree/BPage;->setEntry(Ljdbm/btree/BPage;ILjava/lang/Object;Ljava/lang/Object;)V

    .line 602
    goto :goto_8

    .line 603
    :cond_d
    invoke-static {v5, v10, v13, v11, v12}, Ljdbm/btree/BPage;->setChild(Ljdbm/btree/BPage;ILjava/lang/Object;J)V

    .line 599
    :goto_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 608
    .end local v10    # "i":I
    :cond_e
    iget-object v10, v0, Ljdbm/btree/BPage;->_keys:[Ljava/lang/Object;

    add-int/lit8 v11, v3, -0x1

    invoke-virtual {v5}, Ljdbm/btree/BPage;->getLargestKey()Ljava/lang/Object;

    move-result-object v12

    aput-object v12, v10, v11

    .line 613
    iget-object v10, v0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget-object v10, v10, Ljdbm/btree/BTree;->_recman:Ljdbm/RecordManager;

    iget-wide v11, v0, Ljdbm/btree/BPage;->_recid:J

    invoke-interface {v10, v11, v12, v0, v0}, Ljdbm/RecordManager;->update(JLjava/lang/Object;Ljdbm/helper/Serializer;)V

    .line 614
    iget-object v10, v0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget-object v10, v10, Ljdbm/btree/BTree;->_recman:Ljdbm/RecordManager;

    iget-wide v11, v5, Ljdbm/btree/BPage;->_recid:J

    invoke-interface {v10, v11, v12, v5, v0}, Ljdbm/RecordManager;->update(JLjava/lang/Object;Ljdbm/helper/Serializer;)V

    .line 615
    iget-object v10, v0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget-object v10, v10, Ljdbm/btree/BTree;->_recman:Ljdbm/RecordManager;

    iget-wide v11, v6, Ljdbm/btree/BPage;->_recid:J

    invoke-interface {v10, v11, v12, v6, v0}, Ljdbm/RecordManager;->update(JLjava/lang/Object;Ljdbm/helper/Serializer;)V

    .line 617
    .end local v9    # "steal":I
    const/4 v10, 0x1

    goto/16 :goto_b

    .line 619
    :cond_f
    iget v9, v5, Ljdbm/btree/BPage;->_first:I

    if-ne v9, v2, :cond_14

    .line 623
    const/4 v9, 0x1

    iput v9, v6, Ljdbm/btree/BPage;->_first:I

    .line 624
    iget-boolean v10, v6, Ljdbm/btree/BPage;->_isLeaf:Z

    if-eqz v10, :cond_10

    .line 625
    invoke-static {v5, v2, v6, v9, v2}, Ljdbm/btree/BPage;->copyEntries(Ljdbm/btree/BPage;ILjdbm/btree/BPage;II)V

    .line 626
    goto :goto_9

    .line 627
    :cond_10
    invoke-static {v5, v2, v6, v9, v2}, Ljdbm/btree/BPage;->copyChildren(Ljdbm/btree/BPage;ILjdbm/btree/BPage;II)V

    .line 629
    :goto_9
    iget-object v9, v0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget-object v9, v9, Ljdbm/btree/BTree;->_recman:Ljdbm/RecordManager;

    iget-wide v14, v6, Ljdbm/btree/BPage;->_recid:J

    invoke-interface {v9, v14, v15, v6, v0}, Ljdbm/RecordManager;->update(JLjava/lang/Object;Ljdbm/helper/Serializer;)V

    .line 632
    iget-boolean v9, v0, Ljdbm/btree/BPage;->_isLeaf:Z

    if-eqz v9, :cond_11

    .line 633
    iget v9, v0, Ljdbm/btree/BPage;->_first:I

    add-int/lit8 v10, v9, 0x1

    add-int/lit8 v11, v3, -0x1

    sub-int/2addr v11, v9

    invoke-static {v0, v9, v0, v10, v11}, Ljdbm/btree/BPage;->copyEntries(Ljdbm/btree/BPage;ILjdbm/btree/BPage;II)V

    .line 634
    iget v9, v0, Ljdbm/btree/BPage;->_first:I

    invoke-static {v0, v9, v13, v13}, Ljdbm/btree/BPage;->setEntry(Ljdbm/btree/BPage;ILjava/lang/Object;Ljava/lang/Object;)V

    .line 635
    goto :goto_a

    .line 636
    :cond_11
    iget v9, v0, Ljdbm/btree/BPage;->_first:I

    add-int/lit8 v10, v9, 0x1

    add-int/lit8 v14, v3, -0x1

    sub-int/2addr v14, v9

    invoke-static {v0, v9, v0, v10, v14}, Ljdbm/btree/BPage;->copyChildren(Ljdbm/btree/BPage;ILjdbm/btree/BPage;II)V

    .line 637
    iget v9, v0, Ljdbm/btree/BPage;->_first:I

    invoke-static {v0, v9, v13, v11, v12}, Ljdbm/btree/BPage;->setChild(Ljdbm/btree/BPage;ILjava/lang/Object;J)V

    .line 639
    :goto_a
    iget v9, v0, Ljdbm/btree/BPage;->_first:I

    const/4 v10, 0x1

    add-int/2addr v9, v10

    iput v9, v0, Ljdbm/btree/BPage;->_first:I

    .line 640
    iget-object v9, v0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget-object v9, v9, Ljdbm/btree/BTree;->_recman:Ljdbm/RecordManager;

    iget-wide v11, v0, Ljdbm/btree/BPage;->_recid:J

    invoke-interface {v9, v11, v12, v0, v0}, Ljdbm/RecordManager;->update(JLjava/lang/Object;Ljdbm/helper/Serializer;)V

    .line 643
    iget-wide v11, v5, Ljdbm/btree/BPage;->_previous:J

    const-wide/16 v13, 0x0

    cmp-long v9, v11, v13

    if-eqz v9, :cond_12

    .line 644
    invoke-direct {v0, v11, v12}, Ljdbm/btree/BPage;->loadBPage(J)Ljdbm/btree/BPage;

    move-result-object v9

    .line 645
    .local v9, "prev":Ljdbm/btree/BPage;
    iget-wide v11, v5, Ljdbm/btree/BPage;->_next:J

    iput-wide v11, v9, Ljdbm/btree/BPage;->_next:J

    .line 646
    iget-object v11, v0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget-object v11, v11, Ljdbm/btree/BTree;->_recman:Ljdbm/RecordManager;

    iget-wide v12, v9, Ljdbm/btree/BPage;->_recid:J

    invoke-interface {v11, v12, v13, v9, v0}, Ljdbm/RecordManager;->update(JLjava/lang/Object;Ljdbm/helper/Serializer;)V

    .line 648
    .end local v9    # "prev":Ljdbm/btree/BPage;
    :cond_12
    iget-wide v11, v5, Ljdbm/btree/BPage;->_next:J

    const-wide/16 v13, 0x0

    cmp-long v9, v11, v13

    if-eqz v9, :cond_13

    .line 649
    invoke-direct {v0, v11, v12}, Ljdbm/btree/BPage;->loadBPage(J)Ljdbm/btree/BPage;

    move-result-object v9

    .line 650
    .local v9, "next":Ljdbm/btree/BPage;
    iget-wide v11, v5, Ljdbm/btree/BPage;->_previous:J

    iput-wide v11, v9, Ljdbm/btree/BPage;->_previous:J

    .line 651
    iget-object v11, v0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget-object v11, v11, Ljdbm/btree/BTree;->_recman:Ljdbm/RecordManager;

    iget-wide v12, v9, Ljdbm/btree/BPage;->_recid:J

    invoke-interface {v11, v12, v13, v9, v0}, Ljdbm/RecordManager;->update(JLjava/lang/Object;Ljdbm/helper/Serializer;)V

    .line 655
    .end local v9    # "next":Ljdbm/btree/BPage;
    :cond_13
    iget-object v9, v0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget-object v9, v9, Ljdbm/btree/BTree;->_recman:Ljdbm/RecordManager;

    iget-wide v11, v5, Ljdbm/btree/BPage;->_recid:J

    invoke-interface {v9, v11, v12}, Ljdbm/RecordManager;->delete(J)V

    goto :goto_b

    .line 620
    :cond_14
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "Error during underflow [3]"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 501
    .end local v5    # "brother":Ljdbm/btree/BPage;
    .end local v8    # "bfirst":I
    :cond_15
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v8, "Error during underflow [1]"

    invoke-direct {v5, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 498
    :cond_16
    move v10, v5

    .line 662
    .end local v6    # "child":Ljdbm/btree/BPage;
    :goto_b
    move-object v6, v7

    .end local v7    # "result":Ljdbm/btree/BPage$RemoveResult;
    .local v6, "result":Ljdbm/btree/BPage$RemoveResult;
    :goto_c
    iget v5, v0, Ljdbm/btree/BPage;->_first:I

    if-le v5, v2, :cond_17

    move v5, v10

    goto :goto_d

    :cond_17
    const/4 v5, 0x0

    :goto_d
    iput-boolean v5, v6, Ljdbm/btree/BPage$RemoveResult;->_underflow:Z

    .line 664
    return-object v6
.end method

.method public serialize(Ljava/lang/Object;)[B
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1039
    move-object v0, p1

    check-cast v0, Ljdbm/btree/BPage;

    .line 1040
    .local v0, "bpage":Ljdbm/btree/BPage;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1041
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1043
    .local v2, "oos":Ljava/io/ObjectOutputStream;
    iget-boolean v3, v0, Ljdbm/btree/BPage;->_isLeaf:Z

    invoke-virtual {v2, v3}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 1044
    iget-boolean v3, v0, Ljdbm/btree/BPage;->_isLeaf:Z

    if-eqz v3, :cond_0

    .line 1045
    iget-wide v3, v0, Ljdbm/btree/BPage;->_previous:J

    invoke-virtual {v2, v3, v4}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 1046
    iget-wide v3, v0, Ljdbm/btree/BPage;->_next:J

    invoke-virtual {v2, v3, v4}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 1049
    :cond_0
    iget v3, v0, Ljdbm/btree/BPage;->_first:I

    invoke-virtual {v2, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1051
    iget v3, v0, Ljdbm/btree/BPage;->_first:I

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget v4, v4, Ljdbm/btree/BTree;->_pageSize:I

    const/4 v5, 0x0

    if-ge v3, v4, :cond_3

    .line 1052
    iget-object v4, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget-object v4, v4, Ljdbm/btree/BTree;->_keySerializer:Ljdbm/helper/Serializer;

    if-nez v4, :cond_1

    .line 1053
    iget-object v4, v0, Ljdbm/btree/BPage;->_keys:[Ljava/lang/Object;

    aget-object v4, v4, v3

    invoke-virtual {v2, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1054
    goto :goto_1

    .line 1055
    :cond_1
    iget-object v4, v0, Ljdbm/btree/BPage;->_keys:[Ljava/lang/Object;

    aget-object v4, v4, v3

    if-eqz v4, :cond_2

    .line 1056
    iget-object v4, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget-object v4, v4, Ljdbm/btree/BTree;->_keySerializer:Ljdbm/helper/Serializer;

    iget-object v5, v0, Ljdbm/btree/BPage;->_keys:[Ljava/lang/Object;

    aget-object v5, v5, v3

    invoke-interface {v4, v5}, Ljdbm/helper/Serializer;->serialize(Ljava/lang/Object;)[B

    move-result-object v4

    .line 1057
    .local v4, "serialized":[B
    invoke-static {v2, v4}, Ljdbm/btree/BPage;->writeByteArray(Ljava/io/ObjectOutput;[B)V

    .line 1058
    goto :goto_1

    .line 1059
    .end local v4    # "serialized":[B
    :cond_2
    invoke-static {v2, v5}, Ljdbm/btree/BPage;->writeByteArray(Ljava/io/ObjectOutput;[B)V

    .line 1051
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1064
    .end local v3    # "i":I
    :cond_3
    iget-boolean v3, v0, Ljdbm/btree/BPage;->_isLeaf:Z

    if-eqz v3, :cond_7

    .line 1065
    iget v3, v0, Ljdbm/btree/BPage;->_first:I

    .restart local v3    # "i":I
    :goto_2
    iget-object v4, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget v4, v4, Ljdbm/btree/BTree;->_pageSize:I

    if-ge v3, v4, :cond_6

    .line 1066
    iget-object v4, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget-object v4, v4, Ljdbm/btree/BTree;->_valueSerializer:Ljdbm/helper/Serializer;

    if-nez v4, :cond_4

    .line 1067
    iget-object v4, v0, Ljdbm/btree/BPage;->_values:[Ljava/lang/Object;

    aget-object v4, v4, v3

    invoke-virtual {v2, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1068
    goto :goto_3

    .line 1069
    :cond_4
    iget-object v4, v0, Ljdbm/btree/BPage;->_values:[Ljava/lang/Object;

    aget-object v4, v4, v3

    if-eqz v4, :cond_5

    .line 1070
    iget-object v4, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget-object v4, v4, Ljdbm/btree/BTree;->_valueSerializer:Ljdbm/helper/Serializer;

    iget-object v6, v0, Ljdbm/btree/BPage;->_values:[Ljava/lang/Object;

    aget-object v6, v6, v3

    invoke-interface {v4, v6}, Ljdbm/helper/Serializer;->serialize(Ljava/lang/Object;)[B

    move-result-object v4

    .line 1071
    .restart local v4    # "serialized":[B
    invoke-static {v2, v4}, Ljdbm/btree/BPage;->writeByteArray(Ljava/io/ObjectOutput;[B)V

    .line 1072
    goto :goto_3

    .line 1073
    .end local v4    # "serialized":[B
    :cond_5
    invoke-static {v2, v5}, Ljdbm/btree/BPage;->writeByteArray(Ljava/io/ObjectOutput;[B)V

    .line 1065
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1077
    .end local v3    # "i":I
    :cond_6
    goto :goto_5

    .line 1078
    :cond_7
    iget v3, v0, Ljdbm/btree/BPage;->_first:I

    .restart local v3    # "i":I
    :goto_4
    iget-object v4, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget v4, v4, Ljdbm/btree/BTree;->_pageSize:I

    if-ge v3, v4, :cond_8

    .line 1079
    iget-object v4, v0, Ljdbm/btree/BPage;->_children:[J

    aget-wide v4, v4, v3

    invoke-virtual {v2, v4, v5}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 1078
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1083
    .end local v3    # "i":I
    :cond_8
    :goto_5
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V

    .line 1084
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 1085
    .local v3, "data":[B
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    .line 1086
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1087
    return-object v3
.end method
