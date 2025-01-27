.class Lcom/sleepycat/persist/impl/ReflectionAccessor$KeyObjectAccess;
.super Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;
.source "ReflectionAccessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/persist/impl/ReflectionAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyObjectAccess"
.end annotation


# instance fields
.field private format:Lcom/sleepycat/persist/impl/Format;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Field;Lcom/sleepycat/persist/impl/Format;)V
    .locals 0
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "format"    # Lcom/sleepycat/persist/impl/Format;

    .line 461
    invoke-direct {p0, p1}, Lcom/sleepycat/persist/impl/ReflectionAccessor$FieldAccess;-><init>(Ljava/lang/reflect/Field;)V

    .line 462
    iput-object p2, p0, Lcom/sleepycat/persist/impl/ReflectionAccessor$KeyObjectAccess;->format:Lcom/sleepycat/persist/impl/Format;

    .line 463
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

    .line 476
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ReflectionAccessor$KeyObjectAccess;->field:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/sleepycat/persist/impl/ReflectionAccessor$KeyObjectAccess;->format:Lcom/sleepycat/persist/impl/Format;

    invoke-interface {p2, v1}, Lcom/sleepycat/persist/impl/EntityInput;->readKeyObject(Lcom/sleepycat/persist/impl/Format;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 477
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

    .line 469
    iget-object v0, p0, Lcom/sleepycat/persist/impl/ReflectionAccessor$KeyObjectAccess;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/persist/impl/ReflectionAccessor$KeyObjectAccess;->format:Lcom/sleepycat/persist/impl/Format;

    invoke-interface {p2, v0, v1}, Lcom/sleepycat/persist/impl/EntityOutput;->writeKeyObject(Ljava/lang/Object;Lcom/sleepycat/persist/impl/Format;)V

    .line 470
    return-void
.end method
