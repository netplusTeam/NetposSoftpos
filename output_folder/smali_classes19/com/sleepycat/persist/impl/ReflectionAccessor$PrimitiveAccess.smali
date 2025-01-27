.class Lcom/sleepycat/persist/impl/ReflectionAccessor$PrimitiveAccess;
.super Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;
.source "ReflectionAccessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/persist/impl/ReflectionAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrimitiveAccess"
.end annotation


# instance fields
.field private format:Lcom/sleepycat/persist/impl/SimpleFormat;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Field;Lcom/sleepycat/persist/impl/SimpleFormat;)V
    .locals 0
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "format"    # Lcom/sleepycat/persist/impl/SimpleFormat;

    .line 512
    invoke-direct {p0, p1}, Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;-><init>(Ljava/lang/reflect/Field;)V

    .line 513
    iput-object p2, p0, Lcom/sleepycat/persist/impl/ReflectionAccessor$PrimitiveAccess;->format:Lcom/sleepycat/persist/impl/SimpleFormat;

    .line 514
    return-void
.end method


# virtual methods
.method isNullOrZero(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 534
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ReflectionAccessor$PrimitiveAccess;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

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

    .line 527
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ReflectionAccessor$PrimitiveAccess;->format:Lcom/sleepycat/persist/impl/SimpleFormat;

    iget-object v1, p0, Lcom/sleepycat/persist/impl/ReflectionAccessor$PrimitiveAccess;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2, v1}, Lcom/sleepycat/persist/impl/SimpleFormat;->readPrimitiveField(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;Ljava/lang/reflect/Field;)V

    .line 528
    return-void
.end method

.method write(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityOutput;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "out"    # Lcom/sleepycat/persist/impl/EntityOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 520
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ReflectionAccessor$PrimitiveAccess;->format:Lcom/sleepycat/persist/impl/SimpleFormat;

    iget-object v1, p0, Lcom/sleepycat/persist/impl/ReflectionAccessor$PrimitiveAccess;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2, v1}, Lcom/sleepycat/persist/impl/SimpleFormat;->writePrimitiveField(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityOutput;Ljava/lang/reflect/Field;)V

    .line 521
    return-void
.end method
