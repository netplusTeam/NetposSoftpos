.class Lcom/sleepycat/persist/impl/ComplexFormat$WidenFieldReader;
.super Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;
.source "ComplexFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/persist/impl/ComplexFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WidenFieldReader"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1c831faa09346172L


# instance fields
.field private fieldNum:I

.field private fromFormatId:I

.field private secKeyField:Z

.field private toFormatId:I


# direct methods
.method constructor <init>(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/impl/Format;IZ)V
    .locals 1
    .param p1, "oldFormat"    # Lcom/sleepycat/persist/impl/Format;
    .param p2, "newFormat"    # Lcom/sleepycat/persist/impl/Format;
    .param p3, "newFieldIndex"    # I
    .param p4, "isNewSecKeyField"    # Z

    .line 2022
    invoke-direct {p0}, Lcom/sleepycat/persist/impl/ComplexFormat$FieldReader;-><init>()V

    .line 2023
    invoke-virtual {p1}, Lcom/sleepycat/persist/impl/Format;->getId()I

    move-result v0

    iput v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat$WidenFieldReader;->fromFormatId:I

    .line 2024
    invoke-virtual {p2}, Lcom/sleepycat/persist/impl/Format;->getId()I

    move-result v0

    iput v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat$WidenFieldReader;->toFormatId:I

    .line 2025
    iput p3, p0, Lcom/sleepycat/persist/impl/ComplexFormat$WidenFieldReader;->fieldNum:I

    .line 2026
    iput-boolean p4, p0, Lcom/sleepycat/persist/impl/ComplexFormat$WidenFieldReader;->secKeyField:Z

    .line 2027
    return-void
.end method


# virtual methods
.method final readFields(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;Lcom/sleepycat/persist/impl/Accessor;I)V
    .locals 11
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "input"    # Lcom/sleepycat/persist/impl/EntityInput;
    .param p3, "accessor"    # Lcom/sleepycat/persist/impl/Accessor;
    .param p4, "superLevel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 2037
    new-instance v2, Lcom/sleepycat/persist/impl/WidenerInput;

    iget v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat$WidenFieldReader;->fromFormatId:I

    iget v1, p0, Lcom/sleepycat/persist/impl/ComplexFormat$WidenFieldReader;->toFormatId:I

    invoke-direct {v2, p2, v0, v1}, Lcom/sleepycat/persist/impl/WidenerInput;-><init>(Lcom/sleepycat/persist/impl/EntityInput;II)V

    .line 2040
    .local v2, "widenerInput":Lcom/sleepycat/persist/impl/EntityInput;
    iget-boolean v0, p0, Lcom/sleepycat/persist/impl/ComplexFormat$WidenFieldReader;->secKeyField:Z

    if-eqz v0, :cond_0

    .line 2041
    iget v4, p0, Lcom/sleepycat/persist/impl/ComplexFormat$WidenFieldReader;->fieldNum:I

    .line 2042
    move-object v0, p3

    move-object v1, p1

    move v3, v4

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/sleepycat/persist/impl/Accessor;->readSecKeyFields(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;III)V

    goto :goto_0

    .line 2044
    :cond_0
    iget v9, p0, Lcom/sleepycat/persist/impl/ComplexFormat$WidenFieldReader;->fieldNum:I

    .line 2045
    move-object v5, p3

    move-object v6, p1

    move-object v7, v2

    move v8, v9

    move v10, p4

    invoke-interface/range {v5 .. v10}, Lcom/sleepycat/persist/impl/Accessor;->readNonKeyFields(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;III)V

    .line 2047
    :goto_0
    return-void
.end method
