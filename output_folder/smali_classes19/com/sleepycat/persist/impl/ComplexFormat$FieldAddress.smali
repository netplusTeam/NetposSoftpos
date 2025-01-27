.class Lcom/sleepycat/persist/impl/ComplexFormat$FieldAddress;
.super Ljava/lang/Object;
.source "ComplexFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/persist/impl/ComplexFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FieldAddress"
.end annotation


# instance fields
.field clsFormat:Lcom/sleepycat/persist/impl/ComplexFormat;

.field fieldNum:I

.field isSecField:Z

.field keyFormat:Lcom/sleepycat/persist/impl/Format;

.field superLevel:I


# direct methods
.method constructor <init>(ZIILcom/sleepycat/persist/impl/ComplexFormat;Lcom/sleepycat/persist/impl/Format;)V
    .locals 0
    .param p1, "isSecField"    # Z
    .param p2, "fieldNum"    # I
    .param p3, "superLevel"    # I
    .param p4, "clsFormat"    # Lcom/sleepycat/persist/impl/ComplexFormat;
    .param p5, "keyFormat"    # Lcom/sleepycat/persist/impl/Format;

    .line 910
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 911
    iput-boolean p1, p0, Lcom/sleepycat/persist/impl/ComplexFormat$FieldAddress;->isSecField:Z

    .line 912
    iput p2, p0, Lcom/sleepycat/persist/impl/ComplexFormat$FieldAddress;->fieldNum:I

    .line 913
    iput p3, p0, Lcom/sleepycat/persist/impl/ComplexFormat$FieldAddress;->superLevel:I

    .line 914
    iput-object p4, p0, Lcom/sleepycat/persist/impl/ComplexFormat$FieldAddress;->clsFormat:Lcom/sleepycat/persist/impl/ComplexFormat;

    .line 915
    iput-object p5, p0, Lcom/sleepycat/persist/impl/ComplexFormat$FieldAddress;->keyFormat:Lcom/sleepycat/persist/impl/Format;

    .line 916
    return-void
.end method
