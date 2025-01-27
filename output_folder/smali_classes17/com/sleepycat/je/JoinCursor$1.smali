.class Lcom/sleepycat/je/JoinCursor$1;
.super Ljava/lang/Object;
.source "JoinCursor.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/je/JoinCursor;-><init>(Lcom/sleepycat/je/Database;[Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/JoinConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/sleepycat/je/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/JoinCursor;

.field final synthetic val$counts:[J

.field final synthetic val$cursors:[Lcom/sleepycat/je/Cursor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 170
    const-class v0, Lcom/sleepycat/je/JoinCursor;

    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/JoinCursor;[Lcom/sleepycat/je/Cursor;[J)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/JoinCursor;

    .line 170
    iput-object p1, p0, Lcom/sleepycat/je/JoinCursor$1;->this$0:Lcom/sleepycat/je/JoinCursor;

    iput-object p2, p0, Lcom/sleepycat/je/JoinCursor$1;->val$cursors:[Lcom/sleepycat/je/Cursor;

    iput-object p3, p0, Lcom/sleepycat/je/JoinCursor$1;->val$counts:[J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/Cursor;)I
    .locals 9
    .param p1, "o1"    # Lcom/sleepycat/je/Cursor;
    .param p2, "o2"    # Lcom/sleepycat/je/Cursor;

    .line 172
    const-wide/16 v0, -0x1

    .line 173
    .local v0, "count1":J
    const-wide/16 v2, -0x1

    .line 179
    .local v2, "count2":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, p0, Lcom/sleepycat/je/JoinCursor$1;->val$cursors:[Lcom/sleepycat/je/Cursor;

    array-length v6, v5

    const-wide/16 v7, 0x0

    if-ge v4, v6, :cond_3

    cmp-long v6, v0, v7

    if-ltz v6, :cond_0

    cmp-long v6, v2, v7

    if-gez v6, :cond_3

    .line 181
    :cond_0
    aget-object v5, v5, v4

    if-ne v5, p1, :cond_1

    .line 182
    iget-object v5, p0, Lcom/sleepycat/je/JoinCursor$1;->val$counts:[J

    aget-wide v0, v5, v4

    goto :goto_1

    .line 183
    :cond_1
    if-ne v5, p2, :cond_2

    .line 184
    iget-object v5, p0, Lcom/sleepycat/je/JoinCursor$1;->val$counts:[J

    aget-wide v2, v5, v4

    .line 180
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 187
    .end local v4    # "i":I
    :cond_3
    cmp-long v4, v0, v7

    if-ltz v4, :cond_6

    cmp-long v4, v2, v7

    if-ltz v4, :cond_6

    .line 188
    sub-long v4, v0, v2

    .line 189
    .local v4, "cmp":J
    cmp-long v6, v4, v7

    if-gez v6, :cond_4

    const/4 v6, -0x1

    goto :goto_2

    :cond_4
    cmp-long v6, v4, v7

    if-lez v6, :cond_5

    const/4 v6, 0x1

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    :goto_2
    return v6

    .line 187
    .end local v4    # "cmp":J
    :cond_6
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 170
    check-cast p1, Lcom/sleepycat/je/Cursor;

    check-cast p2, Lcom/sleepycat/je/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/JoinCursor$1;->compare(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/Cursor;)I

    move-result p1

    return p1
.end method
