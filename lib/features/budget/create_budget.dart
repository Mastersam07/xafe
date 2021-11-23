import 'package:flutter/material.dart';
import 'package:xafee/core/res/colors.dart';
import 'package:xafee/widgets/back_button.dart';
import 'package:xafee/widgets/xafe_button.dart';
import 'package:xafee/utils/size_config.dart';

class CreateBudgetScreen extends StatefulWidget {
  const CreateBudgetScreen({Key key}) : super(key: key);

  @override
  _CreateBudgetScreenState createState() => _CreateBudgetScreenState();
}

class _CreateBudgetScreenState extends State<CreateBudgetScreen> {
  final ValueNotifier<String> _selectedBudgetInterval = ValueNotifier(null);
  TextEditingController _budgetNameEditingController;
  TextEditingController _budgetAmountEditingController;
  final List<String> _budgetIntervals = [
    'Daily',
    'Weekly',
    'Monthly',
    'Yearly',
  ];

  @override
  void initState() {
    super.initState();
    _budgetNameEditingController = TextEditingController(text: '');
    _budgetAmountEditingController = TextEditingController(text: '');
  }

  @override
  void dispose() {
    _budgetNameEditingController.dispose();
    _budgetAmountEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        top: false,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.width(20.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: SizeConfig.height(66.45),
              ),
              const XafeBackArrow(),
              SizedBox(
                height: SizeConfig.height(60.45),
              ),
              const Text(
                'Create a budget',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 24,
                  color: AppColors.kColorAppBlack,
                ),
              ),
              SizedBox(
                height: SizeConfig.height(35),
              ),
              TextFormField(
                controller: _budgetNameEditingController,
                decoration: const InputDecoration(
                  hintText: 'Budget name',
                ),
              ),
              SizedBox(
                height: SizeConfig.height(10),
              ),
              TextFormField(
                controller: _budgetAmountEditingController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: 'Budget amount',
                ),
              ),
              SizedBox(
                height: SizeConfig.height(10),
              ),
              ValueListenableBuilder(
                  valueListenable: _selectedBudgetInterval,
                  builder: (_, value, __) {
                    return DropdownButtonFormField(
                      iconEnabledColor: AppColors.kColorAppBlack,
                      value: value,
                      iconDisabledColor: AppColors.kColorAppBlack,
                      onChanged: (value) {
                        _selectedBudgetInterval.value = value;
                      },
                      items: _budgetIntervals.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                          ),
                        );
                      }).toList(),
                      decoration: const InputDecoration(
                        hintText: 'Choose interval',
                      ),
                    );
                  }),
              const Spacer(),
              XafeButton(
                onPressed: () {},
                text: 'Create Budget',
              ),
              SizedBox(
                height: SizeConfig.height(80),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
