.class abstract Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;
.super Ljava/lang/Object;
.source "ReflectionAccessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/persist/impl/ReflectionAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "FieldAccess"
.end annotation


# instance fields
.field field:Ljava/lang/reflect/Field;

.field isPrimitive:Z

.field isString:Z


# direct methods
.method constructor <init>(Ljava/lang/reflect/Field;)V
    .locals 2
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;->isString:Z

    .line 398
    iput-object p1, p0, Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;->field:Ljava/lang/reflect/Field;

    .line 399
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;->isPrimitive:Z

    .line 400
    nop

    .line 401
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;->isString:Z

    .line 402
    return-void
.end method


# virtual methods
.method isNullOrZero(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 424
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method abstract read(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation
.end method

.method abstract write(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityOutput;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation
.end method
