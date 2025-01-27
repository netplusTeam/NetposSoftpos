.class abstract Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;
.super Ljava/lang/Object;
.source "ComplexFormat.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/persist/impl/ComplexFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "FieldReader"
.end annotation


# static fields
.field static final EVOLVE_FAILURE:Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;

.field static final EVOLVE_NEEDED:Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;

.field private static final serialVersionUID:J = 0xc04cc2225ed847cL


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1771
    new-instance v0, Lcom/sleepycat/persist/impl/ComplexFormat$PlainFieldReader;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/sleepycat/persist/impl/ComplexFormat$PlainFieldReader;-><init>(IIZ)V

    sput-object v0, Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;->EVOLVE_NEEDED:Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;

    .line 1773
    new-instance v0, Lcom/sleepycat/persist/impl/ComplexFormat$PlainFieldReader;

    invoke-direct {v0, v1, v1, v1}, Lcom/sleepycat/persist/impl/ComplexFormat$PlainFieldReader;-><init>(IIZ)V

    sput-object v0, Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;->EVOLVE_FAILURE:Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1778
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1779
    return-void
.end method


# virtual methods
.method acceptField(IIZ)Z
    .locals 1
    .param p1, "oldFieldIndex"    # I
    .param p2, "newFieldIndex"    # I
    .param p3, "isNewSecKeyField"    # Z

    .line 1791
    const/4 v0, 0x0

    return v0
.end method

.method addField(Lcom/sleepycat/persist/impl/FieldInfo;)V
    .locals 1
    .param p1, "oldField"    # Lcom/sleepycat/persist/impl/FieldInfo;

    .line 1795
    invoke-static {}, Lcom/sleepycat/compat/DbCompat;->unexpectedState()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method initialize(Lcom/sleepycat/persist/impl/Catalog;ILcom/sleepycat/persist/impl/ComplexFormat;Lcom/sleepycat/persist/impl/ComplexFormat;Z)V
    .locals 0
    .param p1, "catalog"    # Lcom/sleepycat/persist/impl/Catalog;
    .param p2, "initVersion"    # I
    .param p3, "oldParentFormat"    # Lcom/sleepycat/persist/impl/ComplexFormat;
    .param p4, "newParentFormat"    # Lcom/sleepycat/persist/impl/ComplexFormat;
    .param p5, "isOldSecKey"    # Z

    .line 1786
    return-void
.end method

.method abstract readFields(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;Lcom/sleepycat/persist/impl/Accessor;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation
.end method
