.class public final enum Lcom/google/crypto/tink/shaded/protobuf/Value$KindCase;
.super Ljava/lang/Enum;
.source "Value.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/Value;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KindCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/crypto/tink/shaded/protobuf/Value$KindCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/crypto/tink/shaded/protobuf/Value$KindCase;

.field public static final enum BOOL_VALUE:Lcom/google/crypto/tink/shaded/protobuf/Value$KindCase;

.field public static final enum KIND_NOT_SET:Lcom/google/crypto/tink/shaded/protobuf/Value$KindCase;

.field public static final enum LIST_VALUE:Lcom/google/crypto/tink/shaded/protobuf/Value$KindCase;

.field public static final enum NULL_VALUE:Lcom/google/crypto/tink/shaded/protobuf/Value$KindCase;

.field public static final enum NUMBER_VALUE:Lcom/google/crypto/tink/shaded/protobuf/Value$KindCase;

.field public static final enum STRING_VALUE:Lcom/google/crypto/tink/shaded/protobuf/Value$KindCase;

.field public static final enum STRUCT_VALUE:Lcom/google/crypto/tink/shaded/protobuf/Value$KindCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 19
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/Value$KindCase;

    const-string v1, "NULL_VALUE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/Value$KindCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/Value$KindCase;->NULL_VALUE:Lcom/google/crypto/tink/shaded/protobuf/Value$KindCase;

    .line 20
    new-instance v1, Lcom/google/crypto/tink/shaded/protobuf/Value$KindCase;

    const-string v4, "NUMBER_VALUE"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/google/crypto/tink/shaded/protobuf/Value$KindCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/crypto/tink/shaded/protobuf/Value$KindCase;->NUMBER_VALUE:Lcom/google/crypto/tink/shaded/protobuf/Value$KindCase;

    .line 21
    new-instance v4, Lcom/google/crypto/tink/shaded/protobuf/Value$KindCase;

    const-string v6, "STRING_VALUE"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/google/crypto/tink/shaded/protobuf/Value$KindCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/crypto/tink/shaded/protobuf/Value$KindCase;->STRING_VALUE:Lcom/google/crypto/tink/shaded/protobuf/Value$KindCase;

    .line 22
    new-instance v6, Lcom/google/crypto/tink/shaded/protobuf/Value$KindCase;

    const-string v8, "BOOL_VALUE"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lcom/google/crypto/tink/shaded/protobuf/Value$KindCase;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/crypto/tink/shaded/protobuf/Value$KindCase;->BOOL_VALUE:Lcom/google/crypto/tink/shaded/protobuf/Value$KindCase;

    .line 23
    new-instance v8, Lcom/google/crypto/tink/shaded/protobuf/Value$KindCase;

    const-string v10, "STRUCT_VALUE"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v11}, Lcom/google/crypto/tink/shaded/protobuf/Value$KindCase;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/crypto/tink/shaded/protobuf/Value$KindCase;->STRUCT_VALUE:Lcom/google/crypto/tink/shaded/protobuf/Value$KindCase;

    .line 24
    new-instance v10, Lcom/google/crypto/tink/shaded/protobuf/Value$KindCase;

    const-string v12, "LIST_VALUE"

    const/4 v13, 0x6

    invoke-direct {v10, v12, v11, v13}, Lcom/google/crypto/tink/shaded/protobuf/Value$KindCase;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/google/crypto/tink/shaded/protobuf/Value$KindCase;->LIST_VALUE:Lcom/google/crypto/tink/shaded/protobuf/Value$KindCase;

    .line 25
    new-instance v12, Lcom/google/crypto/tink/shaded/protobuf/Value$KindCase;

    const-string v14, "KIND_NOT_SET"

    invoke-direct {v12, v14, v13, v2}, Lcom/google/crypto/tink/shaded/protobuf/Value$KindCase;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/google/crypto/tink/shaded/protobuf/Value$KindCase;->KIND_NOT_SET:Lcom/google/crypto/tink/shaded/protobuf/Value$KindCase;

    .line 18
    const/4 v14, 0x7

    new-array v14, v14, [Lcom/google/crypto/tink/shaded/protobuf/Value$KindCase;

    aput-object v0, v14, v2

    aput-object v1, v14, v3

    aput-object v4, v14, v5

    aput-object v6, v14, v7

    aput-object v8, v14, v9

    aput-object v10, v14, v11

    aput-object v12, v14, v13

    sput-object v14, Lcom/google/crypto/tink/shaded/protobuf/Value$KindCase;->$VALUES:[Lcom/google/crypto/tink/shaded/protobuf/Value$KindCase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput p3, p0, Lcom/google/crypto/tink/shaded/protobuf/Value$KindCase;->value:I

    .line 29
    return-void
.end method

.method public static forNumber(I)Lcom/google/crypto/tink/shaded/protobuf/Value$KindCase;
    .locals 1
    .param p0, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 39
    packed-switch p0, :pswitch_data_0

    .line 47
    const/4 v0, 0x0

    return-object v0

    .line 45
    :pswitch_0
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Value$KindCase;->LIST_VALUE:Lcom/google/crypto/tink/shaded/protobuf/Value$KindCase;

    return-object v0

    .line 44
    :pswitch_1
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Value$KindCase;->STRUCT_VALUE:Lcom/google/crypto/tink/shaded/protobuf/Value$KindCase;

    return-object v0

    .line 43
    :pswitch_2
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Value$KindCase;->BOOL_VALUE:Lcom/google/crypto/tink/shaded/protobuf/Value$KindCase;

    return-object v0

    .line 42
    :pswitch_3
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Value$KindCase;->STRING_VALUE:Lcom/google/crypto/tink/shaded/protobuf/Value$KindCase;

    return-object v0

    .line 41
    :pswitch_4
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Value$KindCase;->NUMBER_VALUE:Lcom/google/crypto/tink/shaded/protobuf/Value$KindCase;

    return-object v0

    .line 40
    :pswitch_5
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Value$KindCase;->NULL_VALUE:Lcom/google/crypto/tink/shaded/protobuf/Value$KindCase;

    return-object v0

    .line 46
    :pswitch_6
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Value$KindCase;->KIND_NOT_SET:Lcom/google/crypto/tink/shaded/protobuf/Value$KindCase;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(I)Lcom/google/crypto/tink/shaded/protobuf/Value$KindCase;
    .locals 1
    .param p0, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 35
    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/Value$KindCase;->forNumber(I)Lcom/google/crypto/tink/shaded/protobuf/Value$KindCase;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/crypto/tink/shaded/protobuf/Value$KindCase;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 18
    const-class v0, Lcom/google/crypto/tink/shaded/protobuf/Value$KindCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Value$KindCase;

    return-object v0
.end method

.method public static values()[Lcom/google/crypto/tink/shaded/protobuf/Value$KindCase;
    .locals 1

    .line 18
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Value$KindCase;->$VALUES:[Lcom/google/crypto/tink/shaded/protobuf/Value$KindCase;

    invoke-virtual {v0}, [Lcom/google/crypto/tink/shaded/protobuf/Value$KindCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/crypto/tink/shaded/protobuf/Value$KindCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Value$KindCase;->value:I

    return v0
.end method
