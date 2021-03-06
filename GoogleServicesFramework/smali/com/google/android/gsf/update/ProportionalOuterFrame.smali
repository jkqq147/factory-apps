.class public Lcom/google/android/gsf/update/ProportionalOuterFrame;
.super Landroid/widget/RelativeLayout;
.source "ProportionalOuterFrame.java"


# instance fields
.field private mSideMargin:I

.field private mTitleHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 50
    iput v0, p0, Lcom/google/android/gsf/update/ProportionalOuterFrame;->mTitleHeight:I

    .line 51
    iput v0, p0, Lcom/google/android/gsf/update/ProportionalOuterFrame;->mSideMargin:I

    .line 52
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v8, 0x1

    .line 56
    invoke-virtual {p0}, Lcom/google/android/gsf/update/ProportionalOuterFrame;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 57
    .local v3, "resources":Landroid/content/res/Resources;
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 58
    .local v2, "parentWidth":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 59
    .local v1, "parentHeight":I
    iget v5, p0, Lcom/google/android/gsf/update/ProportionalOuterFrame;->mTitleHeight:I

    int-to-float v6, v1

    const/high16 v7, 0x7f080000

    invoke-virtual {v3, v7, v8, v8}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/google/android/gsf/update/ProportionalOuterFrame;->mTitleHeight:I

    .line 62
    iget v5, p0, Lcom/google/android/gsf/update/ProportionalOuterFrame;->mSideMargin:I

    int-to-float v6, v2

    const v7, 0x7f080001

    invoke-virtual {v3, v7, v8, v8}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/google/android/gsf/update/ProportionalOuterFrame;->mSideMargin:I

    .line 65
    const v5, 0x7f080002

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 66
    .local v0, "bottom":I
    iget v5, p0, Lcom/google/android/gsf/update/ProportionalOuterFrame;->mSideMargin:I

    const/4 v6, 0x0

    iget v7, p0, Lcom/google/android/gsf/update/ProportionalOuterFrame;->mSideMargin:I

    invoke-virtual {p0, v5, v6, v7, v0}, Lcom/google/android/gsf/update/ProportionalOuterFrame;->setPadding(IIII)V

    .line 71
    const v5, 0x7f0d0069

    invoke-virtual {p0, v5}, Lcom/google/android/gsf/update/ProportionalOuterFrame;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 72
    .local v4, "title":Landroid/view/View;
    if-eqz v4, :cond_0

    .line 73
    iget v5, p0, Lcom/google/android/gsf/update/ProportionalOuterFrame;->mTitleHeight:I

    invoke-virtual {v4, v5}, Landroid/view/View;->setMinimumHeight(I)V

    .line 75
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 76
    return-void
.end method
