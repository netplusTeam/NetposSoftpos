.class Ljdbm/btree/BPage$Browser;
.super Ljdbm/helper/TupleBrowser;
.source "BPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljdbm/btree/BPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Browser"
.end annotation


# instance fields
.field private _index:I

.field private _page:Ljdbm/btree/BPage;


# direct methods
.method constructor <init>(Ljdbm/btree/BPage;I)V
    .locals 0
    .param p1, "page"    # Ljdbm/btree/BPage;
    .param p2, "index"    # I

    .line 1152
    invoke-direct {p0}, Ljdbm/helper/TupleBrowser;-><init>()V

    .line 1153
    iput-object p1, p0, Ljdbm/btree/BPage$Browser;->_page:Ljdbm/btree/BPage;

    .line 1154
    iput p2, p0, Ljdbm/btree/BPage$Browser;->_index:I

    .line 1155
    return-void
.end method


# virtual methods
.method public getNext(Ljdbm/helper/Tuple;)Z
    .locals 4
    .param p1, "tuple"    # Ljdbm/helper/Tuple;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1160
    iget v0, p0, Ljdbm/btree/BPage$Browser;->_index:I

    iget-object v1, p0, Ljdbm/btree/BPage$Browser;->_page:Ljdbm/btree/BPage;

    iget-object v1, v1, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget v1, v1, Ljdbm/btree/BTree;->_pageSize:I

    if-ge v0, v1, :cond_0

    .line 1161
    iget-object v0, p0, Ljdbm/btree/BPage$Browser;->_page:Ljdbm/btree/BPage;

    iget-object v0, v0, Ljdbm/btree/BPage;->_keys:[Ljava/lang/Object;

    iget v1, p0, Ljdbm/btree/BPage$Browser;->_index:I

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    .line 1163
    const/4 v0, 0x0

    return v0

    .line 1165
    :cond_0
    iget-object v0, p0, Ljdbm/btree/BPage$Browser;->_page:Ljdbm/btree/BPage;

    iget-wide v0, v0, Ljdbm/btree/BPage;->_next:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1167
    iget-object v0, p0, Ljdbm/btree/BPage$Browser;->_page:Ljdbm/btree/BPage;

    iget-wide v1, v0, Ljdbm/btree/BPage;->_next:J

    invoke-static {v0, v1, v2}, Ljdbm/btree/BPage;->access$000(Ljdbm/btree/BPage;J)Ljdbm/btree/BPage;

    move-result-object v0

    iput-object v0, p0, Ljdbm/btree/BPage$Browser;->_page:Ljdbm/btree/BPage;

    .line 1168
    iget v0, v0, Ljdbm/btree/BPage;->_first:I

    iput v0, p0, Ljdbm/btree/BPage$Browser;->_index:I

    .line 1170
    :cond_1
    iget-object v0, p0, Ljdbm/btree/BPage$Browser;->_page:Ljdbm/btree/BPage;

    iget-object v0, v0, Ljdbm/btree/BPage;->_keys:[Ljava/lang/Object;

    iget v1, p0, Ljdbm/btree/BPage$Browser;->_index:I

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljdbm/helper/Tuple;->setKey(Ljava/lang/Object;)V

    .line 1171
    iget-object v0, p0, Ljdbm/btree/BPage$Browser;->_page:Ljdbm/btree/BPage;

    iget-object v0, v0, Ljdbm/btree/BPage;->_values:[Ljava/lang/Object;

    iget v1, p0, Ljdbm/btree/BPage$Browser;->_index:I

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljdbm/helper/Tuple;->setValue(Ljava/lang/Object;)V

    .line 1172
    iget v0, p0, Ljdbm/btree/BPage$Browser;->_index:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Ljdbm/btree/BPage$Browser;->_index:I

    .line 1173
    return v1
.end method

.method public getPrevious(Ljdbm/helper/Tuple;)Z
    .locals 4
    .param p1, "tuple"    # Ljdbm/helper/Tuple;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1179
    iget v0, p0, Ljdbm/btree/BPage$Browser;->_index:I

    iget-object v1, p0, Ljdbm/btree/BPage$Browser;->_page:Ljdbm/btree/BPage;

    iget v1, v1, Ljdbm/btree/BPage;->_first:I

    if-ne v0, v1, :cond_1

    .line 1181
    iget-object v0, p0, Ljdbm/btree/BPage$Browser;->_page:Ljdbm/btree/BPage;

    iget-wide v0, v0, Ljdbm/btree/BPage;->_previous:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1182
    iget-object v0, p0, Ljdbm/btree/BPage$Browser;->_page:Ljdbm/btree/BPage;

    iget-wide v1, v0, Ljdbm/btree/BPage;->_previous:J

    invoke-static {v0, v1, v2}, Ljdbm/btree/BPage;->access$000(Ljdbm/btree/BPage;J)Ljdbm/btree/BPage;

    move-result-object v0

    iput-object v0, p0, Ljdbm/btree/BPage$Browser;->_page:Ljdbm/btree/BPage;

    .line 1183
    iget-object v0, v0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    iget v0, v0, Ljdbm/btree/BTree;->_pageSize:I

    iput v0, p0, Ljdbm/btree/BPage$Browser;->_index:I

    .line 1184
    goto :goto_0

    .line 1186
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1189
    :cond_1
    :goto_0
    iget v0, p0, Ljdbm/btree/BPage$Browser;->_index:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Ljdbm/btree/BPage$Browser;->_index:I

    .line 1190
    iget-object v0, p0, Ljdbm/btree/BPage$Browser;->_page:Ljdbm/btree/BPage;

    iget-object v0, v0, Ljdbm/btree/BPage;->_keys:[Ljava/lang/Object;

    iget v2, p0, Ljdbm/btree/BPage$Browser;->_index:I

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Ljdbm/helper/Tuple;->setKey(Ljava/lang/Object;)V

    .line 1191
    iget-object v0, p0, Ljdbm/btree/BPage$Browser;->_page:Ljdbm/btree/BPage;

    iget-object v0, v0, Ljdbm/btree/BPage;->_values:[Ljava/lang/Object;

    iget v2, p0, Ljdbm/btree/BPage$Browser;->_index:I

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Ljdbm/helper/Tuple;->setValue(Ljava/lang/Object;)V

    .line 1192
    return v1
.end method
