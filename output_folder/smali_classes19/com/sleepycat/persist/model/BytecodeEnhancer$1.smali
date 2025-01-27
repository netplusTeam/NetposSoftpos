.class Lcom/sleepycat/persist/model/BytecodeEnhancer$1;
.super Ljava/lang/Object;
.source "BytecodeEnhancer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/persist/model/BytecodeEnhancer;->sortFields()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/persist/model/BytecodeEnhancer;


# direct methods
.method constructor <init>(Lcom/sleepycat/persist/model/BytecodeEnhancer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/persist/model/BytecodeEnhancer;

    .line 254
    iput-object p1, p0, Lcom/sleepycat/persist/model/BytecodeEnhancer$1;->this$0:Lcom/sleepycat/persist/model/BytecodeEnhancer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;)I
    .locals 2
    .param p1, "f1"    # Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;
    .param p2, "f2"    # Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;

    .line 256
    iget-object v0, p1, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->order:Lcom/sleepycat/persist/model/BytecodeEnhancer$OrderInfo;

    iget v0, v0, Lcom/sleepycat/persist/model/BytecodeEnhancer$OrderInfo;->value:I

    iget-object v1, p2, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;->order:Lcom/sleepycat/persist/model/BytecodeEnhancer$OrderInfo;

    iget v1, v1, Lcom/sleepycat/persist/model/BytecodeEnhancer$OrderInfo;->value:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 254
    check-cast p1, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;

    check-cast p2, Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;

    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/persist/model/BytecodeEnhancer$1;->compare(Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;Lcom/sleepycat/persist/model/BytecodeEnhancer$FieldInfo;)I

    move-result p1

    return p1
.end method
