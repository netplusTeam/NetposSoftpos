.class Lbsh/CollectionManager$BasicBshIterator$1;
.super Ljava/lang/Object;
.source "CollectionManager.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbsh/CollectionManager$BasicBshIterator;->createEnumeration(Ljava/lang/Object;)Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field index:I

.field length:I

.field final synthetic this$0:Lbsh/CollectionManager$BasicBshIterator;

.field final synthetic val$array:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lbsh/CollectionManager$BasicBshIterator;Ljava/lang/Object;)V
    .locals 1
    .param p1, "this$0"    # Lbsh/CollectionManager$BasicBshIterator;

    .line 154
    iput-object p1, p0, Lbsh/CollectionManager$BasicBshIterator$1;->this$0:Lbsh/CollectionManager$BasicBshIterator;

    iput-object p2, p0, Lbsh/CollectionManager$BasicBshIterator$1;->val$array:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    const/4 v0, 0x0

    iput v0, p0, Lbsh/CollectionManager$BasicBshIterator$1;->index:I

    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p2

    iput p2, p0, Lbsh/CollectionManager$BasicBshIterator$1;->length:I

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 2

    .line 159
    iget v0, p0, Lbsh/CollectionManager$BasicBshIterator$1;->index:I

    iget v1, p0, Lbsh/CollectionManager$BasicBshIterator$1;->length:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 3

    .line 157
    iget-object v0, p0, Lbsh/CollectionManager$BasicBshIterator$1;->val$array:Ljava/lang/Object;

    iget v1, p0, Lbsh/CollectionManager$BasicBshIterator$1;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lbsh/CollectionManager$BasicBshIterator$1;->index:I

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
