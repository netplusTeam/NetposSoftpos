.class Lcom/sleepycat/persist/impl/RawSingleInput;
.super Lcom/sleepycat/persist/impl/RawAbstractInput;
.source "RawSingleInput.java"


# instance fields
.field private declaredFormat:Lcom/sleepycat/persist/impl/Format;

.field private singleValue:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/sleepycat/persist/impl/Catalog;ZLjava/util/IdentityHashMap;Ljava/lang/Object;Lcom/sleepycat/persist/impl/Format;)V
    .locals 0
    .param p1, "catalog"    # Lcom/sleepycat/persist/impl/Catalog;
    .param p2, "rawAccess"    # Z
    .param p3, "converted"    # Ljava/util/IdentityHashMap;
    .param p4, "singleValue"    # Ljava/lang/Object;
    .param p5, "declaredFormat"    # Lcom/sleepycat/persist/impl/Format;

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/persist/impl/RawAbstractInput;-><init>(Lcom/sleepycat/persist/impl/Catalog;ZLjava/util/IdentityHashMap;)V

    .line 35
    iput-object p4, p0, Lcom/sleepycat/persist/impl/RawSingleInput;->singleValue:Ljava/lang/Object;

    .line 36
    iput-object p5, p0, Lcom/sleepycat/persist/impl/RawSingleInput;->declaredFormat:Lcom/sleepycat/persist/impl/Format;

    .line 37
    return-void
.end method


# virtual methods
.method readNext()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/sleepycat/persist/impl/RawSingleInput;->singleValue:Ljava/lang/Object;

    iget-object v1, p0, Lcom/sleepycat/persist/impl/RawSingleInput;->declaredFormat:Lcom/sleepycat/persist/impl/Format;

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/persist/impl/RawSingleInput;->checkAndConvert(Ljava/lang/Object;Lcom/sleepycat/persist/impl/Format;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
