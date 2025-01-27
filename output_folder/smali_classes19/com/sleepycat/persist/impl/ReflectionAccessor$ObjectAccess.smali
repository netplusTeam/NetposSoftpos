.class Lcom/sleepycat/persist/impl/ReflectionAccessor$ObjectAccess;
.super Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;
.source "ReflectionAccessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/persist/impl/ReflectionAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ObjectAccess"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/reflect/Field;)V
    .locals 0
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .line 434
    invoke-direct {p0, p1}, Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;-><init>(Ljava/lang/reflect/Field;)V

    .line 435
    return-void
.end method


# virtual methods
.method read(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "in"    # Lcom/sleepycat/persist/impl/EntityInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 448
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ReflectionAccessor$ObjectAccess;->field:Ljava/lang/reflect/Field;

    invoke-interface {p2}, Lcom/sleepycat/persist/impl/EntityInput;->readObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 449
    return-void
.end method

.method write(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityOutput;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "out"    # Lcom/sleepycat/persist/impl/EntityOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 441
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ReflectionAccessor$ObjectAccess;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Lcom/sleepycat/persist/impl/EntityOutput;->writeObject(Ljava/lang/Object;Lcom/sleepycat/persist/impl/Format;)V

    .line 442
    return-void
.end method
