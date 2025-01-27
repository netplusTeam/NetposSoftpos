.class Lcom/sleepycat/persist/impl/ComplexFormat$PlainFieldReader;
.super Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;
.source "ComplexFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/persist/impl/ComplexFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlainFieldReader"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x18eb3abdd559b80aL


# instance fields
.field private endField:I

.field private transient endOldField:I

.field private secKeyField:Z

.field private startField:I


# direct methods
.method constructor <init>(IIZ)V
    .locals 0
    .param p1, "oldFieldIndex"    # I
    .param p2, "newFieldIndex"    # I
    .param p3, "isNewSecKeyField"    # Z

    .line 1820
    invoke-direct {p0}, Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;-><init>()V

    .line 1821
    iput p1, p0, Lcom/sleepycat/persist/impl/ComplexFormat$PlainFieldReader;->endOldField:I

    .line 1822
    iput p2, p0, Lcom/sleepycat/persist/impl/ComplexFormat$PlainFieldReader;->startField:I

    .line 1823
    iput p2, p0, Lcom/sleepycat/persist/impl/ComplexFormat$PlainFieldReader;->endField:I

    .line 1824
    iput-boolean p3, p0, Lcom/sleepycat/persist/impl/ComplexFormat$PlainFieldReader;->secKeyField:Z

    .line 1825
    return-void
.end method


# virtual methods
.method acceptField(IIZ)Z
    .locals 2
    .param p1, "oldFieldIndex"    # I
    .param p2, "newFieldIndex"    # I
    .param p3, "isNewSecKeyField"    # Z

    .line 1831
    iget v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat$PlainFieldReader;->endOldField:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat$PlainFieldReader;->endField:I

    add-int/2addr v0, v1

    if-ne p2, v0, :cond_0

    iget-boolean v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat$PlainFieldReader;->secKeyField:Z

    if-ne v0, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method addField(Lcom/sleepycat/persist/impl/FieldInfo;)V
    .locals 1
    .param p1, "oldField"    # Lcom/sleepycat/persist/impl/FieldInfo;

    .line 1838
    iget v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat$PlainFieldReader;->endField:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat$PlainFieldReader;->endField:I

    .line 1839
    iget v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat$PlainFieldReader;->endOldField:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat$PlainFieldReader;->endOldField:I

    .line 1840
    return-void
.end method

.method final readFields(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;Lcom/sleepycat/persist/impl/Accessor;I)V
    .locals 13
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "input"    # Lcom/sleepycat/persist/impl/EntityInput;
    .param p3, "accessor"    # Lcom/sleepycat/persist/impl/Accessor;
    .param p4, "superLevel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 1849
    move-object v0, p0

    iget-boolean v1, v0, Lcom/sleepycat/persist/impl/ComplexFormat$PlainFieldReader;->secKeyField:Z

    if-eqz v1, :cond_0

    .line 1850
    iget v5, v0, Lcom/sleepycat/persist/impl/ComplexFormat$PlainFieldReader;->startField:I

    iget v6, v0, Lcom/sleepycat/persist/impl/ComplexFormat$PlainFieldReader;->endField:I

    .line 1851
    move-object/from16 v2, p3

    move-object v3, p1

    move-object v4, p2

    move/from16 v7, p4

    invoke-interface/range {v2 .. v7}, Lcom/sleepycat/persist/impl/Accessor;->readSecKeyFields(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;III)V

    goto :goto_0

    .line 1853
    :cond_0
    iget v10, v0, Lcom/sleepycat/persist/impl/ComplexFormat$PlainFieldReader;->startField:I

    iget v11, v0, Lcom/sleepycat/persist/impl/ComplexFormat$PlainFieldReader;->endField:I

    .line 1854
    move-object/from16 v7, p3

    move-object v8, p1

    move-object v9, p2

    move/from16 v12, p4

    invoke-interface/range {v7 .. v12}, Lcom/sleepycat/persist/impl/Accessor;->readNonKeyFields(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;III)V

    .line 1856
    :goto_0
    return-void
.end method
